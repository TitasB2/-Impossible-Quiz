@echo off

title Quiz - by Titas

chcp 65001 >nul
setlocal enabledelayedexpansion

:main
cls

echo Quiz (kinda impossible) - by Titas
echo Hey!
echo.
echo 1. Start
echo 2. Info
echo 3. Exit
echo.
set /p inp=^>^>

if "%inp%"=="1" goto :start
if "%inp%"=="2" goto info
if "%inp%"=="3" exit /b 1

echo Invalid choise!
pause
goto main

:start
set "SCORE=0"
cls

echo Here we go!
echo.
echo 1/3
echo.
echo How much is 1+1?
echo.
echo 1. 5
echo 2. 2
echo 3. 3
echo.
set /p q1=^>^> 

if "%q1%"=="1" echo Incorrect! & pause & goto 2
if "%q1%"=="2" (
   echo Correct!
   set /a SCORE+=1
   pause
   goto 2
   )
if "%q1%"=="3" echo Incorrect! (You are only correct by TikTok) & pause & goto 2

echo -1 point (you think you are smart huh?)
set /a SCORE-=1
pause
goto 2

:2
cls

echo 2/3
echo.
echo What is a cow?
echo.
echo 1. Animal
echo 2. Bird
echo 3. Grass
echo.
set /p q2=^>^> 

if "%q2%"=="1" (
   echo Correct!
   set /a SCORE+=1
   pause
   goto 3
)
if "%q2%"=="2" echo Incorrect! (what's in your mind?) & pause & goto 3
if "%q2%"=="3" echo Incorrect! (grass? What are thinking about?) & pause & goto 3

echo -1 point (what are you doing with your score?)
set /a SCORE-=1
pause
goto 3

:3
cls

echo 3/3
echo.
echo What do you call frozen water?
echo.
echo 1. eeeh something
echo 2. Ice
echo 3. A frozen cow
echo.
set /p q3=^>^> 

if "%q3%"=="1" echo Incorrect! (what's that something?) & pause & goto 4
if "%q3%"=="2" (
   echo Correct!
   set /a SCORE+=1
   pause
   goto 4
)
if "%q3%"=="3" echo Incorrect! (a frozen cow? what's going on outside there?) & pause & goto 4

echo -1 point (PRO TIP: SHOOT YOURSELF!)
set /a SCORE-=1
pause
goto 4

:4
echo.
echo That's all for this version!
echo More coming soon (if soon)
echo.
echo Your score:
echo %SCORE%
echo.
echo Press any key to exit . . .
pause >nul
exit /b 1

:info
echo.
echo Just another silly project.
echo.
echo This is a quiz made by Titas
echo If you find any issues please report at
echo https://github.com/TitasB2 to me
echo.
echo If you type something like 224 instead of 1-3, you will lose 1 point.
echo Shoot a random answer if you don't know it will not effect the score.
echo.
echo If you see a lot of (comments) that's normal
echo Have fun! And good luck!
echo.
pause
goto main