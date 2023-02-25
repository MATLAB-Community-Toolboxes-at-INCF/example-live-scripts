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
Using Dandiset examples requires bringing together both:
* **code** - this example library on GitHub
* **data** - DANDI archive storage on an Amazon Web Services (AWS) [S3 bucket](https://docs.aws.amazon.com/AmazonS3/latest/userguide/UsingBucket.html)

Users can elect **convenience MATLAB environments** which streamline all or some of these aspects, or to configure their own **individual environment** for maximum flexibility. 

### Convenience MATLAB Environments
#### DandiHub MATLAB Environment
**[Dandihub](https://hub.dandiarchive.org/hub)** is a JupyterHub environment that combines these resources within a pre-configured virtual desktop that pre-mounts the example code\* & Dandiset data as folders. MATLAB\*\* and MatNWB software are pre-installed. 

(\*) coming soon <br/>
(\*\*) using the [MATLAB Integration for Jupyter](https://www.mathworks.com/products/reference-architectures/jupyter.html)

### MATLAB Online Environment
[MATLAB Online](https://www.mathworks.com/products/matlab-online.html) is a web browser-based MATLAB environment with connectivity to [GitHub](https://www.mathworks.com/products/matlab-online/data-access.html#github) code and [AWS S3](https://www.mathworks.com/products/matlab-online/data-access.html#aws) data. 

MATLAB Online uses [MATLAB Drive](https://www.mathworks.com/products/matlab-online/data-access.html#matlab-drive) as its cloud filesystem. Code can be [cloned](https://www.mathworks.com/help/matlab/matlab_prog/use-git-in-matlab.html) there from GitHub & data can be cached there from AWS.

### Individual MATLAB Environment
Individual MATLAB environments on user machines or cluster nodes offer greater storage & flexibility. Utilizing [remote data access](https://www.mathworks.com/help/matlab/import_export/work-with-remote-data.html) functions for working with S3 data is recommended for the best possible performance. 

## Submitting Your Dandiset Example Live Scripts


## Credits
* For individual examples, see the copyright information in their LICENSE files for attribution. 
* The NWB data standard and software (incl. MatNWB) are supported by the NIH BRAIN Initiative® and the Kavli Foundation. See [here](https://www.nwb.org/projects/) for details on funded NWB project and [here](https://www.nwb.org/publications/) relevant publications. 
* The DANDI data archive project is supported by the NIH BRAIN Initiative® 
* DANDI archive AWS storage is available under the [AWS Open Data Sponsorship Program](https://aws.amazon.com/opendata/open-data-sponsorship-program/). 
* MATLAB is a registered trademark of MathWorks®.
