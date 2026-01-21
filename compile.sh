#!/bin/sh
a="§lProgrammer Drills"
mkdir "$a"
cp pack.mcmeta "$a"
cp pack.png "$a"
cp -r data "$a"
cd "$a"
zip -r "../$a.zip" .
cd ..
rm -rf "$a"
zip -m "ProgrammerDrills.zip" "$a.zip"
