@echo off

lynx -listonly -dump "epcminecraft.fr.gd" > texte.txt

setlocal enabledelayedexpansion

for /F "tokens=*" %%A in (texte.txt) do (
	set line=%%A
	echo !line:~3! >> newfile.txt
)

type "newfile.txt"|repl " " "" >"newfile2.txt"

del newfile.txt
del texte.txt

wget -r -linf -k -p -E -i newfile2.txt -m

del newfile2.txt

pause
