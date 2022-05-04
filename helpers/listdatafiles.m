function temperatureFiles = listdatafiles
% List data files contained in Data directory. If directory not found,
% prompt user for the list.

fs = string(filesep);

try % If project is current, look for Data Files folder under project root
    %TODO: Actually check to see if current project is this project, but
    %wait until I land on a name for this project
    root = currentProject().RootFolder;
    datafolder = root + fs + "Data";

catch
    datafolder = uigetdir("Select data folder");
end

temperatureFiles = dir(datafolder + fs + "*.mat");
temperatureFiles = string({temperatureFiles.name})';
end
