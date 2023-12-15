
function filePaths = load_dandiset(from_location)
    
    switch from_location
            
        case "local"
            % Ask the user to fill the location of the data files
            prompt = {'Enter the path to the NWB data file(s)', ...
                      'Enter the Path to the matNWB library'};
            dlgtitle = 'Input';
            dims = [1 35];
            definput = {'C:\Users\emabb\OneDrive\Desktop\000011\dataset', ...
                        'C:\Users\emabb\OneDrive\Desktop\matnwb-2.5.0.0'};
            answer = inputdlg(prompt,dlgtitle,dims,definput);
            files=dir(fullfile(answer{1},'*.nwb'));

            % Extract the list of files in the path
            filePaths = strings(1, numel(files));
            for i = 1:numel(files)
                filePaths(i) = fullfile(answer{1}, files(i).name);
            end
            matNWBPath = answer{2};
            addpath(genpath(matNWBPath));

            return;


        case "dandi"
            %Download the dataset 
            system('dandi download https://api.dandiarchive.org/api/assets/34b1ae4f-d7f5-466c-bc99-808bdba4520d/download/');
            % Extract the list of files in the path
            files=dir(fullfile(pwd,'*.nwb'));
            filePaths = strings(1, numel(files));
            for i = 1:numel(files)
                filePaths(i) = fullfile(pwd, files(i).name);
            end

            return;
    end

end


