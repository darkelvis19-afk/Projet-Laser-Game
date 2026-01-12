@echo off
echo ========================================
echo   Shoot'em Up - Moteur de Jeu 2D
echo ========================================
echo.
echo Compilation et execution du jeu...
echo.

cd /d %~dp0

if not exist gradlew.bat (
    echo Erreur: gradlew.bat introuvable!
    echo Assurez-vous d'etre dans le repertoire racine du projet.
    pause
    exit /b 1
)

call gradlew.bat :desktop:run

if %ERRORLEVEL% NEQ 0 (
    echo.
    echo Erreur lors de l'execution!
    pause
    exit /b 1
)

pause
