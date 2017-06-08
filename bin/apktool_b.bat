set curPath=%~dp0
set toolPath=%curPath%..\tool
set outputPath=%curPath%..\output
set targetPath=%curPath%..\target

set input=%outputPath%\apktool\d\out
if not "%1"=="" (
	set input=%1
)

set output=%outputPath%\apktool\b\1.apk
DEL /S /Q %output%

%toolPath%\Apktool\apktool.bat  b %input% -o %output%
