rem/*
rem * @Author: Weilong Wen
rem * @Date: 2023-01-13 17:37:11
rem * @LastEditTime: 2023-01-17 14:13:52
rem * @LastEditors: Weilong Wen
rem * @Description: 
rem * @FilePath: \undefinedd:\TT_src_SDK更新脚本\gttsSDK\vcproj\create_build.bat
rem * **************************************************
rem */

call create-examples-vcproj.bat
call create-ffs-vcproj.bat

devenv gtts_examples.sln /Build "Debug|x64"
