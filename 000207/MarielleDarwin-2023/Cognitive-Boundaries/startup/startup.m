function dataPath = startup(from_location)
    % Add the helper functions and to the Figures
    addpath(strcat(fileparts(matlab.desktop.editor.getActiveFilename), filesep, 'helper-functions'));
    addpath(strcat(fileparts(matlab.desktop.editor.getActiveFilename), filesep, 'Figure-3'));
    
    switch from_location
        case "online"
            % TODO
            
        case "local"
            % Ask the user to fill the location of the data files
            prompt = {'Enter the path to the NWB data file(s)', ...
                      'Enter the Path to the matNWB library'};
            dlgtitle = 'Input';
            dims = [1 35];
            definput = {'C:\Users\darwinm\Documents\MATLAB\DandiDownload_000207', ...
                        'C:\Users\darwinm\Documents\MATLAB\matnwb'};
            answer = inputdlg(prompt,dlgtitle,dims,definput);
            dataPath = answer{1};
            matNWBPath = answer{2};
            addpath(genpath(matNWBPath));
            return;
        case "dandi"
            %Download the dataset 
            system('dandi download DANDI:000207/0.220721.1915');
            % Path to NWB data file(s)
            dataPath = strcat(pwd, '/000207/');
            return;
    end

    dataPath = 'Unknown';
end
