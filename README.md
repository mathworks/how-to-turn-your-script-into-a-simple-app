# How to Turn Your Script into a Simple App
[![Open in MATLAB Online](https://www.mathworks.com/images/responsive/global/open-in-matlab-online.svg)](https://matlab.mathworks.com/open/github/v1?repo=mathworks/how-to-turn-your-script-into-a-simple-app&project=ScriptToApp.prj&file=SeaSurfaceTemperatureExplorer.mlx&line=1) [![View How to turn your script into a simple app (Seminar content) on File Exchange](https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg)](https://www.mathworks.com/matlabcentral/fileexchange/111190-how-to-turn-your-script-into-a-simple-app-seminar-content)

## Overview
Custom-built apps are a great way to teach a concept, to automate common tasks, or to provide dashboards for interactively exploring complex data sets. And now with interactive controls in the Live Editor, if you can write a script, you can write an app. This talk demonstrates how to convert MATLAB scripts into simple notebook-style apps.

This demonstration covers the following concepts:
* Replacing literal values with interactive controls in Live Scripts
* Linking interactive controls in Live Scripts to values in the code 
* Live Editor automatically creates animations when a plot is updated in a loop
* Using custom graphics callbacks (ButtonDownFcn) within the Live Editor

This demonstration was built and tested with R2022a. It will likely mostly run in R2021a and R2021b, except for the custom ButtonDownFcn.

This submission contains the companion code for the video "[How to turn your script into a simple app](https://www.mathworks.com/videos/how-to-turn-your-script-into-a-simple-app-1653572686561.html)". 

Try it now: [![Open in MATLAB Online](https://www.mathworks.com/images/responsive/global/open-in-matlab-online.svg)](https://matlab.mathworks.com/open/github/v1?repo=mathworks/how-to-turn-your-script-into-a-simple-app&project=ScriptToApp.prj&file=SeaSurfaceTemperatureExplorer.mlx&line=1)
 



## Instructions
* Open the project, ScriptToApp.prj. This will set up your paths

Fun things to play with:
* SeaSurfaceTemperatureExplorer.mlx - This is the Live Script we build in the seminar
* SearSurfaceTemperatureAnimation.mlx - See how animation works in the Live Editor
* SeaSurfaceTemperatureExplorerAppDesigner.mlapp - Double click to open in App Designer. Right click>Run or enter name in command window to run.
* helpers\trendmap.m, helpers\pickpoint.m: See how we set the custom ButtonDownFcn.

Copyright 2022 The MathWorks, Inc.
