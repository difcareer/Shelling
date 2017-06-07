pushd D:\FastTools\
del /S /Q androinfo\manifest.xml
python D:\Tools\androguard\androaxml.py -i %1 > androinfo\manifest.xml

start D:\FastTools\androinfo\