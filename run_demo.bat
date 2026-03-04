@echo off
setlocal

echo DS440 Sports Betting Decision Support - Demo (Windows)
echo.

if not exist venv (
  echo Creating virtual environment...
  python -m venv venv
)

echo Installing / updating dependencies...
cmd /c "venv\Scripts\activate.bat && python -m pip install --upgrade pip && python -m pip install -r requirements_notf.txt"
if errorlevel 1 (
  echo.
  echo ERROR: Dependency installation failed.
  pause
  exit /b 1
)

echo Running XGBoost model with FanDuel odds...
cmd /c "venv\Scripts\activate.bat && python main.py -xgb -odds=fanduel -kc"

echo.
echo Demo complete.
pause
endlocal
