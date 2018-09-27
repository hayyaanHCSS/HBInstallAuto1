$RecapClassic = Get-Content W:\HBDaily\InstallAutomation\HBReportsExportFiles\RecapReportClassic.txt | ForEach-Object { $_.Trim() }
$RefRecapClassic = Get-Content W:\HBDaily\InstallAutomation\HBReportsExportFiles\Reference\RecapReportClassic.txt | ForEach-Object { $_.Trim() }

Compare-Object $RecapClassic $RefRecapClassic -IncludeEqual -ExcludeDifferent > W:\HBDaily\InstallAutomation\HBReportsExportFiles\RecapReportClassicSimiliarContent.txt