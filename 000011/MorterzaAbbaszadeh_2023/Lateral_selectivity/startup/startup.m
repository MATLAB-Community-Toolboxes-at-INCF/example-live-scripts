%% startup.m
% Setup variables and automatically download data set from DANDI depending how and "where" the code is ran.
%
%% Inputs:
%
%    from_location  : the location from where the live-script is ran. Could be either "local", "dandi" or "online".
%    dandiset_id    : the ID of the DANDI data set.
%    nwb_path       : the path towards the NWB files within the DANDI data set (keyword argument).
%    util_libs      : the path relative to the live-script that uses this function that points towards any utils libraries.
%
%% Outputs:
%
%    dataPath       : the path where the NWB data will be accessible
%
%% Example:
%
%    nwb_final_path = startup("dandi", "000011", nwb_path="sub-255201_ses-20141124_behavior+ecephys+ogen.nwb", util_libs="helper-functions")
%
%  This call will setup the live-script to use the 000011 data set, considering that the live-script that requires this setup is running on DANDI-Hub.
%  This call also setup the NWB file to be located in "000011/sub-255201_ses-20141124_behavior+ecephys+ogen.nwb"
%  and loads in MATLAB the functions from the "helper-functions", located at the same level as the live-script calling this setup function.
%
function dataPath = startup(from_location, dandiset_id, varargin)
    persistent p
    if isempty(p)
        p = inputParser;
        addRequired(p, 'from_location', @(x)mustBeNonempty(validatestring(x, {'local', 'dandi', 'online'})))
        addRequired(p, 'dandiset_id', @(x)validateattributes(x, {'string', 'char'}, {'nonempty'}))
        addParameter(p, 'nwb_path', '', @(x)validateattributes(x, {'string', 'char'}, {'nonempty'}))
        addParameter(p, 'util_libs', [], @(x)isscalar)
    end
    parse(p, from_location, dandiset_id, varargin{:});
    nwb_path = p.Results.nwb_path;
    util_libs = p.Results.util_libs;

    % Add the helper functions
    arrayfun(@(x) addpath(strcat(fileparts(matlab.desktop.editor.getActiveFilename), filesep, x)), util_libs)

    switch from_location
        case "online"
            % TODO

        case "local"
            % Ask the user to fill the location of the data files
            prompt = {'Enter the path to the NWB data file(s)', ...
                      'Enter the Path to the matNWB library'};
            dlgtitle = 'Input';
            dims = [1 35];
            definput = {'C:\Users\darwinm\Documents\MATLAB\', ...
                        'C:\Users\darwinm\Documents\MATLAB\matnwb'};
            answer = inputdlg(prompt, dlgtitle, dims, definput);
            if isempty(answer)
                dataPath = 'Unknown';
                return;
            end
            dataPath = answer{1};
            matNWBPath = answer{2};
            addpath(genpath(matNWBPath));
            return;
        case "dandi"
            % Download the dataset
            system("dandi download DANDI:" + dandiset_id);

            % Path to NWB data file(s)
            dataPath = pwd + "/" + extractBefore(dandiset_id, '/') + "/" + nwb_path;
            return;
    end

    dataPath = 'Unknown';
end
