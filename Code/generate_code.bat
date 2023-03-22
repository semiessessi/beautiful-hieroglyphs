@echo off
echo assets\js\contentScript.js
type ..\Data\tux\out.js > ..\assets\js\contentScript.js
type ..\Data\gardiner\out.js >> ..\assets\js\contentScript.js
rem type ..\Data\noto\out.js >> ..\assets\js\contentScript.js
rem type ..\Data\segoe\out.js >> ..\assets\js\contentScript.js
type implementation.js >> ..\assets\js\contentScript.js