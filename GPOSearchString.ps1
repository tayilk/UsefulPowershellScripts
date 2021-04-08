$string = "ALLCARE2008"

$GPOs = Get-GPO -all

foreach ($gpo in $GPos) {
    $report = Get-GPOReport -Guid $gpo.Id -ReportType xml
    if ($report -match $string){
        write-host "Match Found: $($gpo.DisplayName)"
    }
    else{
        Write-Host "No Match in: $($gpo.DisplayName)"
    }

}