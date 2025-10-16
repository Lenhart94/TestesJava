#!/bin/bash
# Script to compile and run the Snake Game

echo "Compiling Snake Game..."
javac -d bin src/com/snakegame/*.java

if [ $? -eq 0 ]; then
    echo "Compilation successful!"
    echo "Starting Snake Game..."
    java -cp bin com.snakegame.SnakeGame
else
    echo "Compilation failed!"
    exit 1
fi
