@echo off

rem set window title
title jlego

rem home dir
cd ..

rem class path
set CP=.\conf
for %%J in (.\lib\*.jar) do call :add_cp .\lib %%J
for %%J in (.\plugin\*.jar) do call :add_cp .\plugin %%J

rem jvm param
set OPTS=-server -Xms512M -Xmx512M -Xss512k

echo OPTS: %OPTS%
echo CLASSPATH: %CP%
echo.
java %OPTS% -cp %CP% com.lanxincn.jlego.core.boot.JLegoBoot

pause
cmd

rem use function for add class path
:add_cp
set CP=%CP%;%1\%~snx2
goto :eof
