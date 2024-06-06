@echo off
REM Déploiement du fichier compilé
REM Assurez-vous que le répertoire de destination existe
set DEPLOY_DIR=C:\path\to\deployment\directory
if not exist %DEPLOY_DIR% (
    echo Le répertoire de déploiement n'existe pas.
    exit /b 1
)

copy HelloWorld.class %DEPLOY_DIR%
IF %ERRORLEVEL% NEQ 0 (
    echo Déploiement échoué
    exit /b %ERRORLEVEL%
)

echo Déploiement réussi
exit /b 0
