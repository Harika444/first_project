

New-AzResourceGroup -Name harika -Location southindia

$cred = Get-Credential -Message "Enter a username and password for the virtual machine."

$vmParams = @{
  ResourceGroupName = 'harika'
  Name = 'harikavm'
  Location = 'southindia'
  ImageName = 'Win2016Datacenter'
  PublicIpAddressName = 'harikaPublicIp'
  Credential = $cred
  OpenPorts = 3389
}
$newVM1 = New-AzVM @vmParams

$newVM1

 $ip1 = Get-AzPublicIpAddress | select -Expand IpAddress

mstsc /v $ip1

 #Start-AzVM -ResourceGroupName harikars -Name harikavm

 #Stop-AzVM -ResourceGroupName harikars -Name harikavm