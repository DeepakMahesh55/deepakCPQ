@echo off

set CPQTOOLKIT_HOME=%~dp0\..

java -Xms8m -Xmx64m -jar "%CPQTOOLKIT_HOME%\lib\cpq-java-version.jar" 11
set VALID_JAVA_VERSION=%ERRORLEVEL%
if %VALID_JAVA_VERSION% equ 1 (
    exit /b %VALID_JAVA_VERSION%
)

set JAVA_ARGS="@%CPQTOOLKIT_HOME%\conf\java_args.txt" "-Dcpqtoolkit.home=%CPQTOOLKIT_HOME%"

java %JAVA_ARGS% -jar "%CPQTOOLKIT_HOME%\bin\cpq-toolkit.jar" %*
