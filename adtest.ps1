Install-windowsfeature AD-domain-services
Import-Module ADDSDeployment
$Password = "Password1!" | ConvertTo-SecureString -AsPlainText -Force
Install-ADDSForest -CreateDnsDelegation:$false -DatabasePath "C:\Windows\NTDS" -DomainMode Win2012R2 -DomainName "quali.demo" -DomainNetbiosName "QUALIDEMO" -ForestMode Win2012R2 -InstallDns:$true -LogPath "C:\Windows\NTDS" -NoRebootOnCompletion:$true -SysvolPath "C:\Windows\SYSVOL" -Force:$true -SafeModeAdministratorPassword $Password
