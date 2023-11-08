#!/usr/bin/env bash
line=$(head -n 1 variables.tex) 

cd Inhaltsverzeichnis/

myString="${line:24}" 
var2=${myString%?}
newStr="${var2// /-}"
echo $newStr

cd ..

git add *
git commit -m "add $newStr" 

newTex="${newStr}.tex"
cp "variables.tex" "0_Backup_Variables/$newTex"

newPDF="${newStr}.pdf"
cp "Inhaltsverzeichnis/coverletter.pdf" "Applications/$newPDF"

newPDFEN="${newStr}_en.pdf"
cp "Inhaltsverzeichnis/coverletter-EN.pdf" "Applications/$newPDFEN"
z