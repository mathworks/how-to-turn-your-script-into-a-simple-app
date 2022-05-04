function sstmap(lat,lon,sst,t,Year,climits)
% SSTMAP Helpfer function to plot a map of sea surface temperature
%
% SSTMAP(LAT,LON,SST,T,YEAR)

% If not specified, set Color Limits to range of data
if nargin<6
    [tmin,tmax] = bounds(sst,"all");
    climits = [tmin, tmax]; % Color limits
end

yearind = find(year(t) == Year);
if isempty(yearind)
    cla
    return 
end        % If requested year is out of range, don't make a plot

% clf
imagescn(lon,lat,sst(:,:,yearind));      % CDT imagesc with transparent NaN
xlabel Longitude
ylabel Latitude
axis equal
axis([min(lon) max(lon) min(lat) max(lat)])
title(string(Year))
clim(climits)
cb = colorbar;
ylabel(cb,'\circC')


% Add geographic borders
hold on
borders     
hold off
cmocean thermal % CDT colormap

fontsize(gcf,15,"points")
end