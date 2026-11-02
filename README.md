# Mouse-Digger
A tool that shows the class name of the component under mouse. Useful when you debug a laaaaarge program that has thousands of components, especially ones created dynamically.

## Details
https://gabrielmoraru.com/mouse-digger-show-control-under-cursor/ 

## Dependencies 
The program needs the [LightSaber](https://github.com/GabrielOnDelphi/Delphi-LightSaber) library and FastMM4 (though you can manually removed them). 
The Debug build also uses the *optional* [Autopilot for Delphi](https://gabrielmoraru.com/my-delphi-code/autopilot-for-delphi/) bridge, which lets an AI assistant drive the app.

## Why?
I created this program because I worked for a very big (and convoluted) project that had complex "panel in panel in frame in form" layouts, created/moved dynamically, at runtime. 
It was difficult to figure out which panel visible on the screen came from which DFM. 
With Mouse-Digger all I had to do was to point the mouse over the running app and voila... I got the name of the control (panel) that I could search in all DFMs.
