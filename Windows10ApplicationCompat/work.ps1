clear
$uriHealthAppBuildBranchMetrics = 'https://rfw-svc.trafficmanager.net/api/Application/HealthAppBuildBranchMetrics'

$json = @{
'filters' = @{'EntityId' = '7c1d3b2de1bda60df9d26e5a1539ba0c'}
'aggregationLevel'= 'NamePublisherVersion'
}

$datToSend = $json | ConvertTo-Json

try{
Invoke-RestMethod -Uri $uriHealthAppBuildBranchMetrics -Method Post -Body $datToSend -ContentType "application/json" -Debug 
}
catch{
$_.exception.Message
}
