function sstplot(lat,lon,sst,t,Latitude,Longitude)
% SSTPLOT Helper function to plot historic sea surface temperature at  a
% single point on earth
%
% SSTPLOT(LAT,LON,SST,T,LATITUDE,LONGITUDE)
latind = near1(lat,Latitude);
lonind = near1(lon,Longitude);
sst1 = squeeze(sst(latind,lonind,:));
plot(t,sst1)
xlabel Time
ylabel Temperature

LatLabel = string(abs(Latitude));
if Latitude > 0
    LatLabel = LatLabel + "\circ N";
else
    LatLabel = LatLabel + "\circ S";
end

LonLabel = string(abs(Longitude));
if Longitude > 0
    LonLabel = LonLabel + "\circ E";
else
    LonLabel = LonLabel + "\circ W";
end

titlestring = "Sea Surface Temperature at (" + LatLabel + ", " + LonLabel + ")";

if ~any(isnan(sst1))  % Add linear trend line and trend summary, as long as there's valid data here
    hold on
    pp = polyplot(t,sst1);
    % Create informative title
    annualIncrease = diff(pp.YData); % Increase of polyfit over time period, grabbed from plot handle
    numYears = years(range(t));
    if annualIncrease>=0
        direction = "increased ";
    else
        direction = "decreased ";
    end

    titlestring(2) = direction + annualIncrease + "\circ over " + numYears + " years";
    hold off
end

title(titlestring)

% Increase font size
fontsize(gcf,15,"points")

end