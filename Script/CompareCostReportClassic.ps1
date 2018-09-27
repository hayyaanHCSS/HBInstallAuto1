$CostClassic = Get-Content W:\HBDaily\InstallAutomation\HBReportsExportFiles\CostReportClassic.txt | ForEach-Object { $_.Trim() }
$RefCostClassic = Get-Content W:\HBDaily\InstallAutomation\HBReportsExportFiles\Reference\CostReportClassic.txt | ForEach-Object { $_.Trim() }

Compare-Object $CostClassic $RefCostClassic -IncludeEqual -ExcludeDifferent > W:\HBDaily\InstallAutomation\HBReportsExportFiles\CostReportClassicSimiliarContent.txt