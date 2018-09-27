$CustomizedBidProposal = Get-Content W:\HBDaily\InstallAutomation\HBReportsExportFiles\customizedbidproposal.txt | ForEach-Object { $_.Trim() }
$RefCustomizedBidProposal = Get-Content W:\HBDaily\InstallAutomation\HBReportsExportFiles\Reference\customizedbidproposal.txt | ForEach-Object { $_.Trim() }

Compare-Object $CustomizedBidProposal $RefCustomizedBidProposal -IncludeEqual -ExcludeDifferent > W:\HBDaily\InstallAutomation\HBReportsExportFiles\CustomizedBidProposalSimiliarContent.txt