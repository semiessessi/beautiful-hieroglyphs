@echo off

echo manifest-generic.json
type ..\Manifest\manifest_prefix.json_fragment > ..\manifest-generic.json
type ..\Manifest\version.json_fragment >> ..\manifest-generic.json
type ..\Manifest\description.json_fragment >> ..\manifest-generic.json
type ..\Manifest\manifest_version_3.json_fragment >> ..\manifest-generic.json
type ..\Manifest\manifest_bulk.json_fragment >> ..\manifest-generic.json
type ..\Manifest\manifest_suffix.json_fragment >> ..\manifest-generic.json

echo manifest-firefox.json
type ..\Manifest\manifest_prefix.json_fragment > ..\manifest-firefox.json
type ..\Manifest\version.json_fragment >> ..\manifest-firefox.json
type ..\Manifest\description.json_fragment >> ..\manifest-firefox.json
type ..\Manifest\manifest_version_3.json_fragment >> ..\manifest-firefox.json
type ..\Manifest\manifest_bulk.json_fragment >> ..\manifest-firefox.json
type ..\Manifest\browser_specifics_firefox.json_fragment >> ..\manifest-firefox.json
type ..\Manifest\manifest_suffix.json_fragment >> ..\manifest-firefox.json
