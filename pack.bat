@echo off
:
if exist ./www.zip (
    goto build
) else (
    goto pack
)
:pack
rd /s /q .\temp
xcopy /s /h /q ..\..\howto-working .\temp\
cd temp
"D:\soft\SmartGitHg 7\git\bin\git" clean -xdf
rd /s /q .\.git
"C:\Program Files\7-Zip\7z" a -tzip www.zip * -mmt -r
move www.zip ../
cd ..
rd /s /q .\temp
pause
:build
docker build -t howto-docker --build-arg HTTP_PROXY=http://10.194.49.189:1080 .
pause