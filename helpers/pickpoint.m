function [x,y] = pickpoint(obj,ev)
% PICKPOINT Callback to interactively pick and mark a point on a plot
%
% PICKPOINT is not meant be called directly. Just set it as the
% ButtonDownFcn on the object you want people to click on - typically an
% axes or an image.
%
% im = imagesc;
% im.ButtonDownFcn = @pickpoint


x = ev.IntersectionPoint(1);
y = ev.IntersectionPoint(2);

% Delete existing point, if there is one.
% To keep top-level code simple, use findobj instead of keeping track of
% the marker handle
delete(findobj(ancestor(obj,"axes"),"Tag","LatLonMarker"));

% Add a marker
marklatlon(y,x);

% Assign variables into base workspace so they are accessible from
% elsewhere in the script
assignin("base","Longitude",x)
assignin("base","Latitude",y)


end 