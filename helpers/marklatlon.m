function marklatlon(Latitude,Longitude)
% MARKLATLON Helper function to mark a specific coordinate on a sea surface
% temperature map
%
% MARKLATLON(LATITUDE,LONGITUDE)
hold on
h = plot(Longitude,Latitude,"p","MarkerSize",20,"MarkerFaceColor","y","MarkerEdgeColor",[1 .65 0],"Tag","LatLonMarker");
hold off

end