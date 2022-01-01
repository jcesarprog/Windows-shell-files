@ECHO OFF
SET turnOff=%1

ECHO Deleting old backup file.
del "F:\WSL-Backup\Ubuntu20_bkp.tar"

ECHO Stopping WSL machines.
wsl --shutdown

ECHO Starting WSL Ubuntu backup.
wsl --export Ubuntu F:\WSL-Backup\Ubuntu20_bkp.tar
ECHO WSL Ubuntu backup DONE!!.

IF "%turnOff%"=="-d" (
	ECHO "Shutting down"
	timeout /t 3 
	shutdown /s
)
