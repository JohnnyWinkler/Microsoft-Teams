# Verbindung mit Teams Connector herstellen
Connect-MicrosoftTeams -Credential $O365cred
$session = New-CsOnlineSession -Credential $O365cred
Import-PsSession $session

# Verknüpfung mit Ressource aufheben
Set-CsOnlineApplicationInstance -Identity [UserPrincipalName] -OnpremPhoneNumber $null

# Verknüpfung mit Usern aufheben
Set-CsUser -identity “[UserPrincipalName]” -EnterpriseVoiceEnabled $false -HostedVoicemail $false -OnPremlineURI $null