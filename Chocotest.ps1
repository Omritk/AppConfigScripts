Set-ExecutionPolicy Bypass -Scope Process -Force -Confirm:$false; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
choco install nodejs.install -y
