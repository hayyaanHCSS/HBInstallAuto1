$BidLaborMaterial = Get-Content W:\HBDaily\InstallAutomation\HBReportsExportFiles\BiditemStructureReport.txt | ForEach-Object { $_.Trim() }
$RefBidLaborMaterial = Get-Content W:\HBDaily\InstallAutomation\HBReportsExportFiles\Reference\BiditemStructureReport.txt | ForEach-Object { $_.Trim() }

Compare-Object $BidLaborMaterial $RefBidLaborMaterial -IncludeEqual -ExcludeDifferent > W:\HBDaily\InstallAutomation\HBReportsExportFiles\BiditemStructureReportSimiliarContent.txt