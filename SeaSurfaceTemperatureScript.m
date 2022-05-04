%% Sea Surface Temperature Explorer
%% Sea Surface Temperature
% Select and load data file
file = "Pacific.mat";       % Pacific.mat, NorthAtlantic.mat, Global.mat
load(file)

%%
% Create a map of the sea surface temperature 
Year = 2010;
sstmap(lat,lon,sst,t,Year);
sstmaptitle(file,Year)


%% Temperature Trends
% View the annual trends in temperature changes over the entire history of the 
% dataset. Black dots indicate values where the change is statistically significant, 
% as determined by a simple Mann-Kendall test.

ssttrend = trend(sst);      % Annual trend
sig = mann_kendall(sst);    % Statistical significance

%%
trendmap(lon,lat,ssttrend,file,t);

% Mark Latitude and Longitude for time history plot
Latitude = mean(lat);
Longitude = mean(lon);
marklatlon(Latitude, Longitude)

% Stipple
showstipple = true;    % Show statistical significance
if showstipple
    hold on
    stipple(lon,lat,sig)
    hold off
end

% Colormap
cmap = "balance";
center = true;           % Center colormap about 0
trendmapcolor(cmap,center)

%% Temperature History
% Plot timeseries of temperature at selected location

figure
sstplot(lat,lon,sst,t,Latitude,Longitude)
%% Acknowledgements
% This application uses the <https://www.mathworks.com/matlabcentral/fileexchange/70338-climate-data-toolbox-for-matlab 
% Climate Data Toolbox>, authored by Chad A. Greene et. al. The application is 
% based on Chad's tutorial, <https://www.youtube.com/watch?v=t46dTVp7NHY _The 
% Climate Data Toolbox for MATLAB - Analyzing Trends & Global Warming_>_._ The 
% data files Pacific.mat and NorthAtlantic.mat are modified versions of the files 
% pacific_sst.mat and north_atlantic_sst.mat provided in the toolbox. The data 
% were decimated from monthly to annual, and regularized to common data types 
% (doubles for numeric, datetime for dates). Data file Global.mat was downloaded 
% from NOAA, transformed to match format of the others.
%% 
% 
% 
% Chad A. Greene, Kaustubh Thirumalai, Kelly A. Kearney, Jose Miguel Delgado, 
% Wolfgang Schwanghart, Natalie S. Wolfenbarger, Kristen M. Thyng, David E. Gwyther, 
% Alex S. Gardner, and Donald D. Blankenship. The Climate Data Toolbox for MATLAB. 
% _Geochemistry, Geophysics, Geosystems_ 2019. <https://doi.org/10.1029/2019GC008392 
% doi:10.1029/2019GC008392>