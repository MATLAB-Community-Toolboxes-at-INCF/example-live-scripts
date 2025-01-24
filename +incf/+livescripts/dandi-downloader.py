# Monkey patch blessed to overcome MATLAB terminal emulation issues
import blessed

class FixedTerminal(blessed.Terminal):
    @property
    def height(self):
        return 80  # fixed value we could change or compute differently

    @property
    def width(self):
        return 300  # fixed value we could change or compute differently

blessed.Terminal = FixedTerminal

import sys
from dandi.download import download, DownloadExisting

if __name__ == "__main__":
    if len(sys.argv) < 3:
        print("Missing arguments: [DANDISET_ID] [OUTPUT]")
        sys.exit(1)

    dataset, output, *_ = sys.argv[1:]
    download(f"DANDI:{dataset}", output, existing=DownloadExisting.OVERWRITE, jobs=1)