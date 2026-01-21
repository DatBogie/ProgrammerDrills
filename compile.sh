#!/bin/sh
a="§lProgrammer Drills"
mkdir "$a"
cp pack.mcmeta "$a"
cp pack.png "$a"
cp -r data "$a"
zip -rm "$a.zip" "$a"
zip -m "ProgrammerDrills.zip" "$a.zip"
