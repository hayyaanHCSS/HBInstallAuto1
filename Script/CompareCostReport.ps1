$BidLaborMaterial = Get-Content W:\HBDaily\InstallAutomation\HBReportsExportFiles\CostReport.txt | ForEach-Object { $_.Trim() }
$RefBidLaborMaterial = Get-Content W:\HBDaily\InstallAutomation\HBReportsExportFiles\Reference\CostReport.txt | ForEach-Object { $_.Trim() }

Compare-Object $BidLaborMaterial $RefBidLaborMaterial -IncludeEqual -ExcludeDifferent > W:\HBDaily\InstallAutomation\HBReportsExportFiles\CostReportSimiliarContent.txt