function trendmapcolor(cmap, Pivot)
if Pivot, Pivot = 'pivot'; else Pivot = []; end %#ok<UNRCH> 
cmocean(char(cmap),Pivot)

end
