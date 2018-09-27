<#
	Compares what files are in each folder.
	.SideIndicator is replaced with text for readability. 
	.SideIndicator is default => or <=
#>

$hb18bin = Get-ChildItem -Recurse -path C:\HeavyBid\BIN
$hb17bin = Get-ChildItem -Recurse -path W:\HBDaily\InstallAutomation\2017Benmarks\BIN
if (diff $hb18bin $hb17bin )
{
(Compare-Object -ReferenceObject $hb18bin -DifferenceObject $hb17bin |
    ForEach-Object {
        $_.SideIndicator = $_.SideIndicator -replace '=>','Not in 2018.1' -replace '<=','Not in 2017.1.1'
        $_
    } > W:\HBDaily\InstallAutomation\Script\Reports\BINdiff.txt )
}
else
{
"There are no differences between HB\BIN and HB17\BIN" > W:\HBDaily\InstallAutomation\Script\Reports\BINdiff.txt
}