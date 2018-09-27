$ConciseBidProposal = Get-Content W:\HBDaily\InstallAutomation\HBReportsExportFiles\ConciseBidProposal.txt | ForEach-Object { $_.Trim() }
$RefConciseBidProposal = Get-Content W:\HBDaily\InstallAutomation\HBReportsExportFiles\Reference\ConciseBidProposal.txt | ForEach-Object { $_.Trim() }

Compare-Object $ConciseBidProposal $RefConciseBidProposal -IncludeEqual -ExcludeDifferent > W:\HBDaily\InstallAutomation\HBReportsExportFiles\ConciseBidProposalSimiliarContent.txt