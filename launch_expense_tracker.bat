::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFClVQgXCHXy7D6ZcyeD27u67hkIKWu4weYvI5oScL+cB60j3SZIn13Rdl/cPAx9dfx67Zg4LrHZSs2qWMviIoQ7iQU2b2kcxDmt3jy3VlC5b
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off

REM Check if Python is installed
python --version > nul 2>&1
if %errorlevel% neq 0 (
    echo Python is not installed. Installing Python...
    REM Install Python
    start /wait "" "https://www.python.org/ftp/python/3.10.2/python-3.10.2-amd64.exe" /passive
    REM Wait for Python installation to complete
    timeout /t 30
)

REM Activate virtual environment if exists
if exist venv\Scripts\activate (
    call venv\Scripts\activate
)

REM Start Django server
echo Starting Django server...
start /min "" cmd /c "python manage.py runserver"

REM Wait for Django server to start
timeout /t 10

REM Open default browser to Django server URL
echo Opening default browser to Django server...
start "" "http://127.0.0.1:8000/"

echo Django server started successfully.

