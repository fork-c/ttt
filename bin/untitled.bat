@rem
@rem Copyright 2015 the original author or authors.
@rem
@rem Licensed under the Apache License, Version 2.0 (the "License");
@rem you may not use this file except in compliance with the License.
@rem You may obtain a copy of the License at
@rem
@rem      https://www.apache.org/licenses/LICENSE-2.0
@rem
@rem Unless required by applicable law or agreed to in writing, software
@rem distributed under the License is distributed on an "AS IS" BASIS,
@rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
@rem See the License for the specific language governing permissions and
@rem limitations under the License.
@rem

@if "%DEBUG%"=="" @echo off
@rem ##########################################################################
@rem
@rem  untitled startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%"=="" set DIRNAME=.
@rem This is normally unused
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Resolve any "." and ".." in APP_HOME to make it shorter.
for %%i in ("%APP_HOME%") do set APP_HOME=%%~fi

@rem Add default JVM options here. You can also use JAVA_OPTS and UNTITLED_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if %ERRORLEVEL% equ 0 goto execute

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto execute

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\untitled-1.0-SNAPSHOT.jar;%APP_HOME%\lib\ktorm-support-postgresql-4.1.1.jar;%APP_HOME%\lib\ktorm-core-4.1.1.jar;%APP_HOME%\lib\tgbotapi-jvm-10.1.1.jar;%APP_HOME%\lib\tgbotapi.api-jvm-10.1.1.jar;%APP_HOME%\lib\tgbotapi.behaviour_builder.fsm-jvm-10.1.1.jar;%APP_HOME%\lib\tgbotapi.behaviour_builder-jvm-10.1.1.jar;%APP_HOME%\lib\tgbotapi.utils-jvm-10.1.1.jar;%APP_HOME%\lib\tgbotapi.core-jvm-10.1.1.jar;%APP_HOME%\lib\ktor-server-jvm-2.3.8.jar;%APP_HOME%\lib\ktor-server-host-common-jvm-2.3.8.jar;%APP_HOME%\lib\ktor-server-call-id-jvm-2.3.8.jar;%APP_HOME%\lib\ktor-server-call-logging-jvm-2.3.8.jar;%APP_HOME%\lib\ktor-server-default-headers-jvm-2.3.8.jar;%APP_HOME%\lib\ktor-server-compression-jvm-2.3.8.jar;%APP_HOME%\lib\ktor-server-auto-head-response-jvm-2.3.8.jar;%APP_HOME%\lib\ktor-server-caching-headers-jvm-2.3.8.jar;%APP_HOME%\lib\ktor-server-partial-content-jvm-2.3.8.jar;%APP_HOME%\lib\ktor-server-conditional-headers-jvm-2.3.8.jar;%APP_HOME%\lib\ktor-server-content-negotiation-jvm-2.3.8.jar;%APP_HOME%\lib\ktor-server-cors-jvm-2.3.8.jar;%APP_HOME%\lib\ktor-server-data-conversion-jvm-2.3.8.jar;%APP_HOME%\lib\ktor-server-double-receive-jvm-2.3.8.jar;%APP_HOME%\lib\ktor-server-forwarded-header-jvm-2.3.8.jar;%APP_HOME%\lib\ktor-server-hsts-jvm-2.3.8.jar;%APP_HOME%\lib\ktor-server-http-redirect-jvm-2.3.8.jar;%APP_HOME%\lib\ktor-server-status-pages-jvm-2.3.8.jar;%APP_HOME%\lib\ktor-server-method-override-jvm-2.3.8.jar;%APP_HOME%\lib\ktor-server-sessions-jvm-2.3.8.jar;%APP_HOME%\lib\ktor-server-core-jvm-2.3.8.jar;%APP_HOME%\lib\kotlin-reflect-1.9.23.jar;%APP_HOME%\lib\kotlinx-serialization-properties-jvm-1.6.3.jar;%APP_HOME%\lib\micro_utils.ktor.common-jvm-0.20.37.jar;%APP_HOME%\lib\kotlinx-serialization-cbor-jvm-1.6.3.jar;%APP_HOME%\lib\kotlinx-serialization-core-jvm-1.6.3.jar;%APP_HOME%\lib\micro_utils.colors.common-jvm-0.20.37.jar;%APP_HOME%\lib\micro_utils.fsm.common-jvm-0.20.37.jar;%APP_HOME%\lib\micro_utils.serialization.base64-jvm-0.20.37.jar;%APP_HOME%\lib\micro_utils.crypto-jvm-0.20.37.jar;%APP_HOME%\lib\micro_utils.common-jvm-0.20.37.jar;%APP_HOME%\lib\micro_utils.coroutines-jvm-0.20.37.jar;%APP_HOME%\lib\micro_utils.serialization.encapsulator-jvm-0.20.37.jar;%APP_HOME%\lib\micro_utils.serialization.typed_serializer-jvm-0.20.37.jar;%APP_HOME%\lib\micro_utils.serialization.mapper-jvm-0.20.37.jar;%APP_HOME%\lib\micro_utils.language_codes-jvm-0.20.37.jar;%APP_HOME%\lib\kotlinx-serialization-json-jvm-1.6.3.jar;%APP_HOME%\lib\korlibs-time-jvm-5.3.2.jar;%APP_HOME%\lib\korlibs-crypto-jvm-5.3.2.jar;%APP_HOME%\lib\ktor-client-cio-jvm-2.3.8.jar;%APP_HOME%\lib\ktor-client-core-jvm-2.3.8.jar;%APP_HOME%\lib\ktor-network-tls-jvm-2.3.8.jar;%APP_HOME%\lib\ktor-http-cio-jvm-2.3.8.jar;%APP_HOME%\lib\ktor-websocket-serialization-jvm-2.3.8.jar;%APP_HOME%\lib\ktor-serialization-jvm-2.3.8.jar;%APP_HOME%\lib\ktor-websockets-jvm-2.3.8.jar;%APP_HOME%\lib\ktor-events-jvm-2.3.8.jar;%APP_HOME%\lib\ktor-http-jvm-2.3.8.jar;%APP_HOME%\lib\ktor-network-jvm-2.3.8.jar;%APP_HOME%\lib\ktor-utils-jvm-2.3.8.jar;%APP_HOME%\lib\ktor-io-jvm-2.3.8.jar;%APP_HOME%\lib\uuid-jvm-0.8.2.jar;%APP_HOME%\lib\kslog-jvm-1.3.2.jar;%APP_HOME%\lib\kotlin-stdlib-jdk8-1.9.22.jar;%APP_HOME%\lib\kotlinx-coroutines-jdk8-1.8.0.jar;%APP_HOME%\lib\kotlinx-coroutines-core-jvm-1.8.0.jar;%APP_HOME%\lib\kotlinx-coroutines-slf4j-1.8.0.jar;%APP_HOME%\lib\kotlin-stdlib-jdk7-1.9.22.jar;%APP_HOME%\lib\kotlin-stdlib-2.0.0.jar;%APP_HOME%\lib\postgresql-42.1.4.jar;%APP_HOME%\lib\annotations-23.0.0.jar;%APP_HOME%\lib\activation-1.1.1.jar;%APP_HOME%\lib\slf4j-api-1.7.36.jar;%APP_HOME%\lib\jansi-2.4.1.jar;%APP_HOME%\lib\config-1.4.3.jar


@rem Execute untitled
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %UNTITLED_OPTS%  -classpath "%CLASSPATH%" org.example.MainKt %*

:end
@rem End local scope for the variables with windows NT shell
if %ERRORLEVEL% equ 0 goto mainEnd

:fail
rem Set variable UNTITLED_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
set EXIT_CODE=%ERRORLEVEL%
if %EXIT_CODE% equ 0 set EXIT_CODE=1
if not ""=="%UNTITLED_EXIT_CONSOLE%" exit %EXIT_CODE%
exit /b %EXIT_CODE%

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
