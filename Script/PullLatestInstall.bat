@echo on
for /F "delims=" %%a in ('dir  /b /od "\\hbprodmgmt\installs\Trunk\*.msi"') do set Youngest=%%a
xcopy /y "\\hbprodmgmt\installs\Trunk\%Youngest%" "C:\Users\alex.kwie\Desktop\BATCH" 
start C:\Users\alex.kwie\Desktop\BATCH\%Youngest%"