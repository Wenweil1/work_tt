1.如有必要请在create_build.bat中添加或修改创建和编译项目的文件名称：
call create-examples-vcproj.bat
devenv gtts_examples.sln /Build "Debug|x64"

1.把gttsSDK文件夹--TT_Develop.bat文件复制替换到到softDev文件夹下
2.在softDev下按“Shift+鼠标右键”打开PowerShell 窗口
3.运行PS D:\SoftDev> .\TT_Develop.bat 启动VS命令行窗口
   更新softDev下内容时运行PS D:\SoftDev> .\TT_Develop.bat -update

Tip:
如有必要请在TT_Develop.bat修改SVN 和VS 安装路径
    set TortoiseProcPath=C:/"Program Files"/TortoiseSVN/bin/TortoiseProc.exe
    set vcvars64_batPath="C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build\vcvars64.bat"


