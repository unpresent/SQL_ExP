ECHO OFF

REM �������� ������
copy "bin\Release\UDF.XmlParams.dll" "\\SRV-DEV01\d$\Programms\Extended Stored Procedures\" /y
IF ERRORLEVEL 0 GOTO NEXT1
GOTO ERROR

:NEXT1
REM �������� ������ �� ������
Sqlcmd -S "SRV-DEV01\FUTURE" -d "BackOffice.Dev" -E -b -i "Install.sql"
if not ERRORLEVEL 1 goto :OK

:ERROR 
pause
GOTO EXIT

:OK

:EXIT