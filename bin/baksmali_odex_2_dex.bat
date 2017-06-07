pushd D:\FastTools\
@RD /S /Q baksmali\out
del /S /Q baksmali\1.dex
java -jar D:\Tools\smali2\baksmali-2.0.3.jar -d nexus5\framework -o baksmali\out -x %1
java -jar D:\Tools\smali2\smali-2.0.3.jar baksmali\out\ -o baksmali\1.dex