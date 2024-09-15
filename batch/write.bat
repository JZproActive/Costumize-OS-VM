@echo off
title Create your own operating system!
color 1f
cd vm
cd vm
:main
cls
set /p code=
if %code%==print goto print
if %code%==pause goto pause
if %code%==question/q goto question
if %code%==question/if goto if
if %code%==goto/new goto goto


:print
set /p print=What to print?: 
echo echo %print% >> code.bat
goto main

:pause
echo pause >> code.bat
goto main

:question
set/p question=What to question?:
set/p question2=With what name wanted to detect?
echo set/p %question2%=%question%: >> code.bat
goto main

:if
set/p if=What if?: 
set/p if2=What name?: 
set/p if3=What goto?: 
echo if %if2%==%if% goto %if3%

:goto
set/p goto=Name of goto?: 
echo :%goto% >> code.bat