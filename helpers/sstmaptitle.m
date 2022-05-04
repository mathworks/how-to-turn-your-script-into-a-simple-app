function sstmaptitle(file,Year)
% SSTMAPTITLE Helper function to add a title to map of sea surface
% temperature
%
% SSTMAPTITLE(FILENAME, YEAR)

[~,name] = fileparts(file); % File name for title
title(name + " Sea Surface Temperature in "  + Year)
end
