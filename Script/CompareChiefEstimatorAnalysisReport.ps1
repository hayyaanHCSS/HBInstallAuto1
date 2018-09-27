$BidLaborMaterial = Get-Content W:\HBDaily\InstallAutomation\HBReportsExportFiles\ChiefEstimatorAnalysisReport.txt | ForEach-Object { $_.Trim() }
$RefBidLaborMaterial = Get-Content W:\HBDaily\InstallAutomation\HBReportsExportFiles\Reference\ChiefEstimatorAnalysisReport.txt | ForEach-Object { $_.Trim() }

Compare-Object $BidLaborMaterial $RefBidLaborMaterial -IncludeEqual -ExcludeDifferent > W:\HBDaily\InstallAutomation\HBReportsExportFiles\ChiefEstimatorAnalysisReportSimiliarContent.txt