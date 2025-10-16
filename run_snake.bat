@echo off
REM Script to compile and run the Snake Game on Windows

echo Compiling Snake Game...
javac -d bin src\com\snakegame\*.java

if %ERRORLEVEL% EQU 0 (
    echo Compilation successful!
    echo Starting Snake Game...
    java -cp bin com.snakegame.SnakeGame
) else (
    echo Compilation failed!
    exit /b 1
)
