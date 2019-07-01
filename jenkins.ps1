Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
choco install jre8 -y 
choco install jdk8 -y 
choco install jenkins --version 2.138.1 -y  --execution-timeout 54000 
 
$initialAdminPassword = Get-Content -Path 'C:\Program Files (x86)\Jenkins\secrets\initialAdminPassword'
$initialAdminPassword