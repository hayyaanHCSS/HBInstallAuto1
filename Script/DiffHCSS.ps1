<#
	Compares what files are in each folder.
	.SideIndicator is replaced with text for readability. 
	.SideIndicator is default => or <=
#>

$hb18hcss = Get-ChildItem -Recurse -path C:\HeavyBid\HCSS
$hb17hcss = Get-ChildItem -Recurse -path W:\HBDaily\InstallAutomation\2017Benmarks\HCSS
if (diff $hb18hcss $hb17hcss ){
(Compare-Object -ReferenceObject $hb18hcss -DifferenceObject $hb17hcss |
    ForEach-Object {
        $_.SideIndicator = $_.SideIndicator -replace '=>','Not in 2018.1' -replace '<=','Not in 2017.1.1'
        $_
    } > W:\HBDaily\InstallAutomation\Script\Reports\HCSSdiff.txt )
}
else 
{
"There are no differences between HB\HCSS and HB17\HCSS" > W:\HBDaily\InstallAutomation\Script\Reports\HCSSdiff.txt 
}