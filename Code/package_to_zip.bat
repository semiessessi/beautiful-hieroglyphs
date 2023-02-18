@echo off
copy /y manifest-generic.json manifest.json > nul
tar -acf beautiful-hieroglyphs.zip manifest.json assets
echo Packaged beautiful-hieroglyphs.zip

copy /y manifest-firefox.json manifest.json > nul
tar -acf beautiful-hieroglyphs-firefox.zip manifest.json assets
echo Packaged beautiful-hieroglyphs-firefox.zip