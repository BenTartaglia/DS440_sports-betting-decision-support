@echo off
REM DS440 Sports Betting Decision Support System Demo
REM This script installs dependencies and runs the betting model

echo Creating virtual environment...
python -m venv venv

echo Activating virtual environment...
call venv\Scripts\activate

echo Installing dependencies...
pip install -r requirements.txt

echo Running betting model with Kelly Criterion...
python main.py -xgb -kc

echo Demo complete.
pause
