C:
cd C:\HeavyBidWS\BIN
$Match,$NotMatch = (dir *.exe | %{ $_.VersionInfo } | Where-Object {$_.FileVersion -NotMatch "^2018.1"} | Sort-Object FileVersion -Descending).Where({$_.FileVersion -like '2018*'},'Split') 
@($Match,$NotMatch) > V:\alex.kwie\Script\binFileVerWS.txt
