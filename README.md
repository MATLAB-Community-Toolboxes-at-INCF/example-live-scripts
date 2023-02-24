# example-live-scripts
Library of examples using DANDI archive datasets ('Dandisets') authored as MATLAB® live scripts

## About the Library
The **[DANDI Archive](https://dandiarchive.org/)** hosts and catalogs openly licensed cellular neurophysiology datasets. 

DANDI Archive datasets (**'Dandisets'**) predominantly use the **[Neurodata without Borders](https://www.nwb.org/) (NWB) data standard**. The NWB standard allows neuroscientists to exchange cellular neurophysiology data in a common format.

This library contains reproduced and/or reworked Dandiset analyses authored as **MATLAB [live script](https://www.mathworks.com/help/matlab/matlab_prog/what-is-a-live-script-or-function.html)** examples. 

Reproduced and reworked analyses can serve to advance the quality and impact of original scientific datasets. Supporting and encouraging such 're-hacked' analyses is the goal of this library. 

## About the Examples
Accepted library examples will typically: 
* explain the scientific context of the study producing the original Dandiset
* illustrate how to access and use a Dandiset
* achieve a reproduction and/or reworking of one or more findings (e.g., specific figures) from a Dandiset, potentially generating novel insights

To achieve these goals, the live script examples combine code, narrative text, images, and sometimes [interactive controls](https://www.mathworks.com/help/matlab/matlab_prog/add-interactive-controls-to-a-live-script.html).

To access the dataset, most examples use **[MatNWB](https://www.mathworks.com/matlabcentral/fileexchange/67741-neurodatawithoutborders-matnwb) software** which is an open-source MATLAB toolbox for inspecting, reading, writing, and working with data encoded in NWB format. 

## Finding Dandisets of Interest
The best way to find Dandisets of interest is to browse the [DANDI archive web directory](https://dandiarchive.org/dandiset). Each Dandiset has a unique 6-digit Dandiset identifier.

## Using Dandiset Example Live Scripts
This library is implemented as a GitHub repository. Examples in this library consist of code and text files, but not the large datasets directly.

Dandiset data storage is implemented as an Amazon Web Services (AWS) [S3 bucket](https://docs.aws.amazon.com/AmazonS3/latest/userguide/UsingBucket.html), under the [AWS Open Data Sponsorship Program](https://aws.amazon.com/opendata/open-data-sponsorship-program/). 

**[Dandihub](https://hub.dandiarchive.org/hub)** is a convenience JupyterHub environment that combines these resources within a virtual desktop:
* pre-mounting the DANDI archive data and this example library\* as folders
* pre-installing MATLAB\*\* and MatNWB software

Outside Dandihub, users can use this library by [cloning the whole GitHub repository](https://www.mathworks.com/help/matlab/matlab_prog/use-git-in-matlab.html) given its limited size. This can be a folder within their [MATLAB Drive](https://www.mathworks.com/products/matlab-drive.html) which makes the data available for use in [MATLAB Online](https://www.mathworks.com/products/matlab-online.html). 

Utilizing [remote data access](https://www.mathworks.com/help/matlab/import_export/work-with-remote-data.html) functions for working with S3 data are recommended for the best possible performance, in both local desktop and MATLAB Online environments. 

Individual examples in this library are coded and tested to access their Dandiset using one or more of these workflows (local machine, MATLAB Online, Dandihub). This will typically be described in the example README files. 

(\*) coming soon <br/>
(\*\*) using the [MATLAB Integration for Jupyter](https://www.mathworks.com/products/reference-architectures/jupyter.html)

## Submitting Your Dandiset Example Live Scripts


## Credits
* For individual examples, see the copyright information in their LICENSE files for attribution. 
* The NWB data standard and software (incl. MatNWB) are supported by the NIH BRAIN Initiative® and the Kavli Foundation. See [here](https://www.nwb.org/projects/) for details on funded NWB project and [here](https://www.nwb.org/publications/) relevant publications. 
* The DANDI data archive project is supported by the NIH BRAIN Initiative® 
* MATLAB is a registered trademark of MathWorks®.
