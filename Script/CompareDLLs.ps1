<#
	Compares what files are in each folder.
	.SideIndicator is replaced with text for readability. 
	.SideIndicator is default => or <=
#>


$currentDLL = Get-ChildItem -Recurse -path "C:\Program Files (x86)\Common Files\HCSS"
$masterListDLL = Get-ChildItem -Recurse -path W:\HBDaily\InstallAutomation\OCXDLLbenchmarkFolder\
if (diff $currentDLL $masterListDLL)
{
(Compare-Object -ReferenceObject $currentDLL -DifferenceObject $masterListDLL |
    ForEach-Object {
        $_.SideIndicator = $_.SideIndicator -replace '=>','Not in Program Files \ Common Files \ HCSS' -replace '<=','Not in benchmark folder'
        $_ 
  } > W:\HBDaily\InstallAutomation\Script\Reports\dllComparison.txt )
}
else 
{
"There are no missing or extra DLL / OCX !" > W:\HBDaily\InstallAutomation\Script\Reports\dllComparison.txt
}