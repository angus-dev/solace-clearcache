@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  topicPublisher startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Add default JVM options here. You can also use JAVA_OPTS and TOPIC_PUBLISHER_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto init

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto init

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:init
@rem Get command-line arguments, handling Windows variants

if not "%OS%" == "Windows_NT" goto win9xME_args

:win9xME_args
@rem Slurp the command line arguments.
set CMD_LINE_ARGS=
set _SKIP=2

:win9xME_args_slurp
if "x%~1" == "x" goto execute

set CMD_LINE_ARGS=%*

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\solace-samples-java.jar;%APP_HOME%\lib\sol-jcsmp-10.5.0.jar;%APP_HOME%\lib\sempclient_samplelib-1.0.0.jar;%APP_HOME%\lib\sempactionclient_samplelib-1.0.0.jar;%APP_HOME%\lib\gson-2.6.2.jar;%APP_HOME%\lib\commons-logging-1.1.3.jar;%APP_HOME%\lib\commons-lang-2.6.jar;%APP_HOME%\lib\org.osgi.annotation-6.0.0.jar;%APP_HOME%\lib\org.apache.servicemix.bundles.jzlib-1.0.7_2.jar;%APP_HOME%\lib\swagger-annotations-1.5.12.jar;%APP_HOME%\lib\jersey-client-2.22.2.jar;%APP_HOME%\lib\jersey-media-multipart-2.22.2.jar;%APP_HOME%\lib\jersey-media-json-jackson-2.22.2.jar;%APP_HOME%\lib\jackson-datatype-jsr310-2.7.5.jar;%APP_HOME%\lib\jackson-jaxrs-json-provider-2.5.4.jar;%APP_HOME%\lib\jackson-jaxrs-base-2.5.4.jar;%APP_HOME%\lib\jackson-module-jaxb-annotations-2.5.4.jar;%APP_HOME%\lib\jackson-databind-2.7.5.jar;%APP_HOME%\lib\jackson-core-2.7.5.jar;%APP_HOME%\lib\jackson-annotations-2.7.5.jar;%APP_HOME%\lib\migbase64-2.2.jar;%APP_HOME%\lib\jersey-common-2.22.2.jar;%APP_HOME%\lib\jersey-entity-filtering-2.22.2.jar;%APP_HOME%\lib\javax.ws.rs-api-2.0.1.jar;%APP_HOME%\lib\hk2-locator-2.4.0-b34.jar;%APP_HOME%\lib\hk2-api-2.4.0-b34.jar;%APP_HOME%\lib\javax.inject-2.4.0-b34.jar;%APP_HOME%\lib\mimepull-1.9.6.jar;%APP_HOME%\lib\javax.annotation-api-1.2.jar;%APP_HOME%\lib\jersey-guava-2.22.2.jar;%APP_HOME%\lib\osgi-resource-locator-1.0.1.jar;%APP_HOME%\lib\hk2-utils-2.4.0-b34.jar;%APP_HOME%\lib\aopalliance-repackaged-2.4.0-b34.jar;%APP_HOME%\lib\javassist-3.18.1-GA.jar;%APP_HOME%\lib\javax.inject-1.jar

@rem Execute topicPublisher
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %TOPIC_PUBLISHER_OPTS%  -classpath "%CLASSPATH%" com.solace.samples.TopicPublisher %CMD_LINE_ARGS%

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable TOPIC_PUBLISHER_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%TOPIC_PUBLISHER_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
