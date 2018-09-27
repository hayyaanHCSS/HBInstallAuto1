<#
	Compares what files are in each folder.
	.SideIndicator is replaced with text for readability. 
	.SideIndicator is default => or <=
#>


$hb18util = Get-ChildItem -Recurse -path C:\HeavyBid\UTILITY
$hb17util = Get-ChildItem -Recurse -path W:\HBDaily\InstallAutomation\2017Benmarks\UTILITY
if(diff $hb18util $hb17util   ){
(Compare-Object -ReferenceObject $hb18util -DifferenceObject $hb17util |
    ForEach-Object {
        $_.SideIndicator = $_.SideIndicator -replace '=>','Not in 2018.1' -replace '<=','Not in 2017.1.1'
        $_
    } > W:\HBDaily\InstallAutomation\Script\Reports\DiffUTIL.txt )
}
else
{
"There are no differences between HB\UTILITY and HB17\UTILITY" > W:\HBDaily\InstallAutomation\Script\Reports\DiffUTIL.txt
}