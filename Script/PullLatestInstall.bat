@echo on
for /F "delims=" %%a in ('dir  /b /od "\\HBbuild\Installs\master\*.msi"') do set Youngest=%%a
xcopy /y "\\HBbuild\Installs\master\*.msi\%Youngest%" "C:\Users\hayyaan.merchant\Downloads\BATCH" 
start C:\Users\hayyaan.merchant\Downloads\BATCH\%Youngest%"
