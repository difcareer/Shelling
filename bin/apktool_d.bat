set curPath=%~dp0
set toolPath=%curPath%..\tool
set outputPath=%curPath%..\output
set targetPath=%curPath%..\target

@echo off
DEL /S /Q %outputPath%\apktool\d\out
echo "deleting old file..."
@echo on
%toolPath%\Apktool\apktool.bat  d %1 -o %outputPath%\apktool\d\out -f

start %outputPath%\apktool\d\out