<#
	Compares what files are in each folder.
	.SideIndicator is replaced with text for readability. 
	.SideIndicator is default => or <=
#>

$hb18sys = Get-ChildItem -Recurse -path C:\HeavyBid\SYS
$hb17sys = Get-ChildItem -Recurse -path W:\HBDaily\InstallAutomation\2017Benmarks\SYS
if(diff $hb18sys $hb17sys ){
(Compare-Object -ReferenceObject $hb18sys -DifferenceObject $hb17sys |
    ForEach-Object {
        $_.SideIndicator = $_.SideIndicator -replace '=>','Not in 2018.1' -replace '<=','Not in 2017.1.1'
        $_
    } > W:\HBDaily\InstallAutomation\Script\Reports\SYSdiff.txt )
}
else 
{
"There are no differences between HB\SYS and HB17\SYS" >  W:\HBDaily\InstallAutomation\Script\Reports\SYSdiff.txt
}