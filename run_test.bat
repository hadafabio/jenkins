@echo on
REM Compilation du fichier Java
javac HelloWorld.java
IF %ERRORLEVEL% NEQ 0 (
    echo Compilation échouée
    exit /b %ERRORLEVEL%
)

REM Exécution du fichier compilé
java HelloWorld
IF %ERRORLEVEL% NEQ 0 (
    echo Exécution échouée
    exit /b %ERRORLEVEL%
)

echo Tests réussis
pause