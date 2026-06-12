@echo off

IF EXIST "venv\Scripts\activate.bat" (
    echo Virtual environment found, activating...
    call venv\Scripts\activate.bat
) ELSE (
    echo No virtual environment found, creating one...
    python -m venv venv
    echo Virtual environment created, activating...
    call venv\Scripts\activate.bat
)

IF EXIST "requirements.txt" (
    echo Installing dependencies from requirements.txt...
    pip install -r requirements.txt
) ELSE (
    echo No requirements.txt found, creating one...
    type nul > requirements.txt
    echo Created empty requirements.txt
)

echo Done! Virtual environment is active.
cmd /k