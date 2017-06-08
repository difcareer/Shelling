set curPath=%~dp0
set toolPath=%curPath%..\tool
set outputPath=%curPath%..\output
set targetPath=%curPath%..\target

set input=%1
set output=%2
if "%1"=="" (
	echo "no input"
	goto :eof
)

if "%2"=="" (
	echo "no output"
	goto :eof
)

echo "begin apktool_d"
call apktool_d.bat %1 %2

echo "begin SmaliDebugTool"
call SmaliDebugTool.bat %1 %2
