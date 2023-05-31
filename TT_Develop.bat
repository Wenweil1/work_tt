@echo off 
rem /*
rem * @Author: Weilong Wen
rem * @Date: 2023-01-13 15:49:14
rem * @LastEditTime: 2023-01-16 14:54:34
rem * @LastEditors: Weilong Wen
rem * @Description: 
rem * @FilePath: \undefinedd:\SoftDev\TT_Develop.bat
rem * **************************************************
rem */

@echo off 
title TurboTides

set updateType=%1
set Revision=%2
set srcFilePath=./gttsSDK/src

set TortoiseProcPath=C:/"Program Files"/TortoiseSVN/bin/TortoiseProc.exe
set vcvars64_batPath="C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build\vcvars64.bat"
rem set vcvars64_batPath=C:\progra~2\"Microsoft Visual Studio"\2017\Community\VC\Auxiliary\Build\vcvars64.bat


if "%updateType%"=="-update" (
	echo Whether to update [src][SoftDev][latest_SDK]%?
	pause
	
	echo updating File under path "%srcFilePath%"
	for /d %%i in (%srcFilePath%/*) do ( 
	echo updating %srcFilePath%/%%i 
	%TortoiseProcPath% /command:update /path:"%srcFilePath%/%%i" %Revision% /closeonend:2
	rem	%TortoiseProcPath% /command:update /path:"%srcFilePath%/%%i" /rev:%Revision% /closeonend:3

	)
    echo "--------------------------------"
	echo updating File under path "SoftDev"
	for /d %%i in (./*) do ( 
	echo updating ./%%i 
	 %TortoiseProcPath% /command:update /path:"./%%i" %Revision% /closeonend:2
	 rem %TortoiseProcPath% /command:update /path:"./%%i" /rev:%Revision% /closeonend:3

	)

	call ./gttsSDK/vcproj/update_sdk.bat latest taize
	
	cd .\gttsSDK\vcproj
	call %comspec% /k "%vcvars64_batPath% && env.bat&& create_build.bat"

) else (

	cd .\gttsSDK\vcproj
	rem call %comspec% /k "%vcvars64_batPath%&& env.bat"
	call %comspec% /k "%vcvars64_batPath% && env.bat"

)