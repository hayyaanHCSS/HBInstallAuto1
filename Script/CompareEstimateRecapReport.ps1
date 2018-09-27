$BidLaborMaterial = Get-Content W:\HBDaily\InstallAutomation\HBReportsExportFiles\EstimateRecapReport.txt | ForEach-Object { $_.Trim() }
$RefBidLaborMaterial = Get-Content W:\HBDaily\InstallAutomation\HBReportsExportFiles\Reference\EstimateRecapReport.txt | ForEach-Object { $_.Trim() }

Compare-Object $BidLaborMaterial $RefBidLaborMaterial -IncludeEqual -ExcludeDifferent > W:\HBDaily\InstallAutomation\HBReportsExportFiles\EstimateRecapReportSimiliarContent.txt