function installCDT
% Install Climate Data Toolbox if it isn't installed
name = "Climate Data Toolbox for MATLAB";

installed = matlab.addons.installedAddons;
hascdt = ismember(name,installed.Name);

if ~hascdt  
    display("Installing Climate Data Toolbox")

    % Install from the MLTBX on Chad's website. This won't be the latest
    % version, but is easiest to install and manage programmatically.
    outfilename = websave(tempdir+"cdt.mltbx","http://chadagreene.com/ClimateDataToolbox.mltbx");
    matlab.addons.install(outfilename);
end

% Make sure it is enabled, too
cdtenabled = matlab.addons.isAddonEnabled(name);

if ~cdtenabled
    matlab.addons.enableAddon(name)
end


end
