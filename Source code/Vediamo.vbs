set x = createobject("wscript.shell")
wscript.sleep 6000
do
x.sendkeys "non puoi"
x.sendkeys "{enter}"
x.sendkeys "non puoi"
x.sendkeys "{BS}"
loop
