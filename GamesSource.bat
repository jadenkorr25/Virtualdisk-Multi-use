@ECHO OFF
:MENU
CLS
ECHO  ------------------------------------------------------------------------
ECHO (            GESTION GAMES - MENU PRINCIPAL                              )
ECHO  ------------------------------------------------------------------------
ECHO.
ECHO                        Mise A Jour complete: Steps 1 to 4
ECHO     0 - NANI HELP!
ECHO.
ECHO     1 - Fusionner Updates avec Games Source (long!)
ECHO     2 - Supprimer le Games outdated de tous les ordis (unmount avant!)
ECHO     3 - Copier le Games Source sur tous les ordis
ECHO     4 - Supprimer Updates et recréer un Updates vide (finaliser MaJ)
ECHO.
ECHO     5 - Restaurer la derniere version du Games Source à 1 PC
ECHO.
ECHO     6 - QUITTER
ECHO.
ECHO     Entrez le numero de l'operation desiree, puis faites ENTER...
ECHO -------------------------------------------------------------------------
SET /P CHOIX=Votre choix: 

IF %CHOIX% == 0 GOTO HELP
IF %CHOIX% == 1 GOTO MERGE
IF %CHOIX% == 2 GOTO DELETE
IF %CHOIX% == 3 GOTO CREATE
IF %CHOIX% EQU 4 GOTO NEWUPDATE
IF %CHOIX% == 5 GOTO SINGLEUPDATE
IF %CHOIX% == 6 GOTO EOF
GOTO INVALID

:HELP
ECHO NANI
PAUSE
GOTO MENU


:MERGE
DISKPART /S X:\Ressources\merge.txt
PAUSE
GOTO MENU

:DELETE
DEL "\\SONIC\VHD Drives\HACKERMAN.vhdx"
DEL "\\SONIC\VHD Drives\KIRBY.vhdx"
DEL "\\SONIC\VHD Drives\METAKNIGHT.vhdx"
DEL "\\SONIC\VHD Drives\MARIO.vhdx"
DEL "\\SONIC\VHD Drives\LINK.vhdx"
DEL "\\SONIC\VHD Drives\ZELDA.vhdx"
DEL "\\SONIC\VHD Drives\LUIGI.vhdx"
DEL "\\SONIC\VHD Drives\AANG.vhdx"
DEL "\\SONIC\VHD Drives\ZEKROM.vhdx"
DEL "\\SONIC\VHD Drives\RESHIRAM.vhdx"
DEL "\\SONIC\VHD Drives\STREAMINGPC.vhdx"
DEL "\\SONIC\VHD Drives\SONIC.vhdx"
DEL "\\SONIC\VHD Drives\KORRA.vhdx"
PAUSE
GOTO MENU


:CREATE
DISKPART /S X:\Ressources\create.txt
PAUSE
GOTO MENU

:NEWUPDATE
pause
DEL X:\Ressources\Updates.vhdx
DISKPART /S X:\Ressources\newupdate.txt
PAUSE
GOTO MENU

:SINGLEUPDATE
DEL "\\SONIC\VHD Drives\KIRBY.vhdx"
DISKPART /S \\SONIC\Ressources\test.txt
PAUSE
GOTO MENU

:INVALID
ECHO Veuillez entrer un numéro parmis les choix.
PAUSE
GOTO MENU


END



select vhd = \\SONIC\VHD Drives\mondisque.vhdx
attatch vhd