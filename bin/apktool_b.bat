@echo off
set curPath=%~dp0
set toolPath=%curPath%..\tool
set outputPath=%curPath%..\output
set targetPath=%curPath%..\target

set cnt=0
:loop
if "%1"=="" (echo %cnt% ) else (set /a cnt+=1&shift /1&goto :loop)

set out=%outputPath%\apktool\b\1.apk

if %cnt% GE 0 (
	set out=%1
)


DEL /S /Q %outputPath%\apktool\b\1.apk
%toolPath%\Apktool\apktool.bat  b %outputPath%\apktool\d\out -o %out%

start %outputPath%\apktool\b