<#
原账号设置文件两个文件
D:\Qt\MaintnanceTool.ini
%USERPROFILE%\AppData\Roaming\Qt\qtaccount.ini
教育许可账号三个文件
D:\Qt\MaintnanceTool.ini
%USERPROFILE%\AppData\Roaming\Qt\qtaccount.ini
%USERPROFILE%\AppData\Roaming\Qt\qtlicenses.ini
实现配置文件切换功能
#>

#1.标记所有%USERPROFILE%\AppData\Roaming\Qt目录下的ini文件
$CurrentAccountPath = "$env:USERPROFILE\AppData\Roaming\Qt"
$CurrentAccountFiles = Get-ChildItem -Path $CurrentAccountPath -Filter *.ini
#2.把所有已标记ini文件剪贴到D:\Qt（现在，所有前账号文件都在D:\Qt下）
$CurrentAccountFiles | ForEach-Object {
    Move-Item -Path $_.FullName -Destination "D:\Qt"
}
#2.1更新￥CurrentAccountFiles变量
$CurrentAccountFiles = Get-ChildItem -Path "D:\Qt" -Filter *.ini
#3.把 D:\Qt\更换账号ini 目录下的所有ini文件剪贴到%USERPROFILE%\AppData\Roaming\Qt
$NewAccountPath = "D:\Qt\更换账号ini"
$NewAccountFiles = Get-ChildItem -Path $NewAccountPath -Filter *.ini
$NewAccountFiles | ForEach-Object {
    Move-Item -Path $_.FullName -Destination $CurrentAccountPath
}
<#4.把$CurrentAccountFiles剪贴到 D:\Qt\更换账号ini 目录下;
    把D:\Qt下的MaintenanceTool.ini移动到D:\Qt\更换账号ini目录下，作为下次切换的账号文件备份#>
$CurrentAccountFiles | ForEach-Object {
    Move-Item -Path $_.FullName -Destination $NewAccountPath
}
#5.把CurrenAccountPath目录下的MaintenanceTool.ini剪贴到D:\Qt目录下
Move-Item -Path "$CurrentAccountPath\MaintenanceTool.ini" -Destination "D:\Qt"

#6.打印$CurrrentAccountPath目录下的qtaccount.ini文件的第二行
$CurrentAccount = (Get-Content "$CurrentAccountPath\qtaccount.ini" | Select-Object -Index 1)
Write-Output "切换完成，启动MaintenanceTool.exe"
Write-Output "现在账号是$CurrentAccount"
.\MaintenanceTool.exe
pause