$BidLaborMaterial = Get-Content W:\HBDaily\InstallAutomation\HBReportsExportFiles\CostPriceReport.txt | ForEach-Object { $_.Trim() }
$RefBidLaborMaterial = Get-Content W:\HBDaily\InstallAutomation\HBReportsExportFiles\Reference\CostPriceReport.txt | ForEach-Object { $_.Trim() }

Compare-Object $BidLaborMaterial $RefBidLaborMaterial -IncludeEqual -ExcludeDifferent > W:\HBDaily\InstallAutomation\HBReportsExportFiles\CostPriceReportSimiliarContent.txt