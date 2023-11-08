#!/usr/bin/env bash
cd CV/
xelatex cv.tex

cd ../CV-EN/
xelatex cv.tex

cd ../coverletter/
xelatex coverletter.tex

cd ../coverletter-EN/
xelatex coverletter.tex

cd ../Inhaltsverzeichnis/
xelatex coverletter.tex

xelatex coverletter-EN.tex

line=$(head -n 1 variables.tex) 
myString="${line:1}"
cp coverletter.pdf myString

cd ..
./backup.sh
