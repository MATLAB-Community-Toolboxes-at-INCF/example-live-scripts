# example-live-scripts
Library of examples using DANDI archive datasets authored as MATLAB® live scripts

## About 
The **[DANDI Archive](https://dandiarchive.org/)** hosts and catalogues openly licensed cellular neurophysiology datasets which allows for reproduced and reworked analyses, which can in turn strenghthen and advance the quality and impact of those datasets.

This library contains examples of reproduced and/or reworked DANDI archive dataset analyses authored as **MATLAB [live scripts](https://www.mathworks.com/help/matlab/matlab_prog/what-is-a-live-script-or-function.html)**. 

Broadly speaking, the library of examples contained here: 
* explain the scientific context of the study producing the original DANDI archive dataset
* illustrate how to access & use a DANDI archive dataset
* achieve a reproduction and/or reworking of one or more findings (e.g., specific figures) from a DANDI archive dataset, potentially generating novel insights

To achieve these goals, these live script examples combine code, narrative text, images, and sometimes [interactive controls](https://www.mathworks.com/help/matlab/matlab_prog/add-interactive-controls-to-a-live-script.html).

DANDI Archive datasets predominantly use the **[Neurodata without Borders](https://www.nwb.org/) (NWB) data standard** which allows neuroscientists to exchange cellular neurophysiology data in a common format. To access the dataset, most examples use **[MatNWB](https://www.mathworks.com/matlabcentral/fileexchange/67741-neurodatawithoutborders-matnwb) software** which is an open-source MATLAB toolbox for inspecting, reading, writing, and working with data encoded in NWB format. 

## Finding DANDI Archive Example Live Scripts
The best way to find DANDI archive datasets (aka 'Dandisets') of interest is to browse the [DANDI archive web directory](https://dandiarchive.org/dandiset). Each Dandiset has a unique Dandiset identifier which is a 6 digit numeric code. 

This DANDI archive example library is organized at the top level by folders named for a unique Dandiset identifier. Each folder contains one or more examples of working with that dataset. 

## Using DANDI Archive Example Live Scripts
This library is implemented as a GitHub repository. Examples in this library consist of code & text files, but not the large datasets directly.

The DANDI archive datasets (Dandisets) are implemented as an Amazon Web Services (AWS) [S3 bucket](https://docs.aws.amazon.com/AmazonS3/latest/userguide/UsingBucket.html), under the [AWS Open Data Sponsorship Program](https://aws.amazon.com/opendata/open-data-sponsorship-program/). 

**[Dandihub](https://hub.dandiarchive.org/hub)** is a convenience JupyterHub environment that combines these resources within a virtual desktop:
* pre-mounting the DANDI archive data & this example library\* as folders
* pre-installing MATLAB(\*\*) and MatNWB software

Outside Dandihub, users can use this library by [cloning the whole GitHub repository](https://www.mathworks.com/help/matlab/matlab_prog/use-git-in-matlab.html) given its limited size. This can be a folder within their [MATLAB Drive](https://www.mathworks.com/products/matlab-drive.html) which makes the data available for use in [MATLAB Online](https://www.mathworks.com/products/matlab-online.html). 

Utilizing [remote data access](https://www.mathworks.com/help/matlab/import_export/work-with-remote-data.html) functions for working with S3 data are recommended for the best possible performance, in both local desktop and MATLAB Online environments. 

Individual examples in this library are coded & tested to access their Dandiset using one or more of these workflows (local machine, MATLAB Online, Dandihub). This will typically be described in the example README files. 

## Submitting Your DANDI Archive Example Live Scripts

## Contributing to DANDI Archive Example Live Scripts


## Credits
* For individual examples, see the copyright information in their LICENSE files for attribution. 
* The NWB data standard, MatNWB software, and DANDI data archive are projects supported by The BRAIN Initiative® NIH funding.
* The NWB data standard & MatNWB software were initiated by the Kavli Foundation.
* MATLAB is a registered trademark of MathWorks®.
