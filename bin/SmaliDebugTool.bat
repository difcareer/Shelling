set curPath=%~dp0
set toolPath=%curPath%..\tool
set outputPath=%curPath%..\output
set targetPath=%curPath%..\target
set smaliPath=%toolPath%\SmaliDebugTool\

pushd %smaliPath%
set output=%outputPath%\apktool\d\out

java -jar  SmaliDebugTool.jar %1 %2

pushd %curPath%