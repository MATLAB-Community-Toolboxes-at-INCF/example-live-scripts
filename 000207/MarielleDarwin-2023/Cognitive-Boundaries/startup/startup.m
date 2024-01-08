function dataPath = startup(from_location, dandiset_id, varargin)
    persistent p
    if isempty(p)
        p = inputParser;
        addRequired(p, 'from_location', @(x)validateattributes(x, {'string'}, {'nonempty'}))
        addRequired(p, 'dandiset_id', @(x)validateattributes(x, {'string'}, {'nonempty'}))
        addParameter(p, 'nwb_path', '', @(x)validateattributes(x, {'string'}, {'nonempty'}))
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
            definput = {'C:\Users\darwinm\Documents\MATLAB\";', ...
                        'C:\Users\darwinm\Documents\MATLAB\matnwb'};
            answer = inputdlg(prompt, dlgtitle, dims, definput);
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
