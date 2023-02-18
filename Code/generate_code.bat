@echo off
echo assets\js\contentScript.js
type ..\Data\out.js > ..\assets\js\contentScript.js
type implementation.js >> ..\assets\js\contentScript.js