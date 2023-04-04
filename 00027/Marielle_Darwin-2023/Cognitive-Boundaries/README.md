# **DANDI dataset ID: 000207**

![image](https://user-images.githubusercontent.com/78009407/218124172-992e3e60-aa1b-49f3-91a1-1fb4bdf6c318.png) ![image](https://user-images.githubusercontent.com/78009407/218131802-3fb672cf-27a2-4bc7-8b3b-711e40e958c3.png) 

[![Contributors][contributors-shield]][contributors-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]

*Last updated: 4 April 2023*

## Purpose and Project Goals
This is the repository for the [MATLAB Community Toolbox Training Project](https://www.incf.org/matlab-community-toolbox-training-projects) `dandi-example-live-scripts-000207`. Supported by [incf](https://www.incf.org/), this [MatNWB](https://github.com/NeurodataWithoutBorders/matnwb) data storytelling project replicated a subset of the figures found in the [Zheng et al. (2022) manuscript](https://www.nature.com/articles/s41593-022-01020-w) using the [Neurodata Without Borders (NWB)](https://www.nwb.org/) files available within the [DANDI open source dataset ID:00027](https://dandiarchive.org/dandiset/000207?search=00207&pos=1). Narrative text was added in the core live script to provide scientific context, motivation about the publication, and the specific results reproduced.

### Description of data utilized and code created 
The code to convert the [NWB data](https://dandiarchive.org/dandiset/000207?search=00207&pos=1) was created with the [MatNWB interface library](https://github.com/NeurodataWithoutBorders/matnwb) to read and write NWB files with [MATLAB](https://www.mathworks.com/products/matlab.html). This code was used to analyze human single-neuron data that has determined the important role of cognitive boundaries in episodic memory formation. 

## Requirements
1. [MatNWB interface library](https://github.com/NeurodataWithoutBorders/matnwb)
2. [Dataset](https://dandiarchive.org/dandiset/000207/0.220721.1915/files?location=) from one subject obtained from [DANDI](https://dandiarchive.org/). The subject file used in this script is `sub-1_ses-1_ecephys+image.nwb` found [here](https://dandiarchive.org/dandiset/000207/0.220721.1915/files?location=sub-1). 

## User Guide
The following files are included in this repository to reproduce several subpanels of Figure 3 from the accompanying [manuscript](https://www.nature.com/articles/s41593-022-01020-w). 
- Core live script `DANDI_000207_liveScript.mlx`
  - Use this live script to execute the code that allows for the reproduction of several figure subpanels with a conceptual discussion and explanation of the authors' chosen methodology.
- Live functions called within the core live script to reproduce key figure subpanels
  -  Figure 3a: `fig3a_reproduction.mlx`
  -  Figure 3c: `fig3c_reproduction.mlx`
  -  Figure 3i: `fig3i_reproduction.mlx`
  -  Figure 3j: `fig3j_reproduction.mlx`
- Helper functions called within the core live script and/or live functions
  - Locate spikes within each cluster for the selected cell: `nwb_read_unit.m` 
  - Plot lines with shaded error/confidence: `boundedline.m` 

## Project Author
[Marielle Darwin](https://github.com/mldarwin) 

[contributors-shield]: https://img.shields.io/github/contributors/mldarwin/dandi-example-live-scripts-000207.svg?style=flat-square
[contributors-url]: https://github.com/mldarwin/dandi-example-live-scripts-000207/graphs/contributors
[stars-shield]: https://img.shields.io/github/stars/mldarwin/dandi-example-live-scripts-000207.svg?style=flat-square
[stars-url]: https://github.com/mldarwin/dandi-example-live-scripts-000207/stargazers
[issues-shield]: https://img.shields.io/github/issues/mldarwin/dandi-example-live-scripts-000207.svg?style=flat-square
[issues-url]: https://github.com/mldarwin/dandi-example-live-scripts-000207/issues
[license-shield]: https://img.shields.io/github/license/mldarwin/dandi-example-live-scripts-000207.svg?style=flat-square
[license-url]: https://github.com/mldarwin/dandi-example-live-scripts-000207/blob/main/LICENSE
