set curPath=%~dp0
set toolPath=%curPath%..\tool
set outputPath=%curPath%..\output
set targetPath=%curPath%..\target

set output=%outputPath%\apktool\d\out

if not "%2"=="" (
	set output=%2
	echo %2
)

DEL /S /Q %output%

%toolPath%\Apktool\apktool.bat  d %1 -o %output% -f
