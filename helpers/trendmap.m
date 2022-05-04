function im = trendmap(lon, lat, trendmat, file, t)
% TRENDMAP Helper function to plot a map showing sea surface temperature trends
%
% TRENDMAP(LON,LAT,TRENDMAT,FILENAME,T)

firstyear = year(t(1));
lastyear = year(t(end));

figure
im = imagescn(lon,lat,trendmat);
cb = colorbar;
axis equal
axis tight
xlabel Longitude
ylabel Latitude
ylabel(cb,"\circC / year")

% Add geographic borders
hold on
borders
hold off

[~,name] = fileparts(file); % File name for title
titlestring = name + " Sea Surface Temperature Annual Trend " + firstyear + " to " + lastyear;
title(titlestring)

% Make interactive!
im.ButtonDownFcn = @pickpoint;

fig = ancestor(im,"figure");
fig.Pointer = "cross";

fontsize(gcf,15,"points")

end