# Verbindung mit Teams Connector herstellen
Connect-MicrosoftTeams -Credential $O365cred
$session = New-CsOnlineSession -Credential $O365cred
Import-PsSession $session

# Verknüpfung mit Ressource aufheben
Set-CsOnlineApplicationInstance -Identity [UPN] -OnpremPhoneNumber $null

# Verknüpfung mit Usern aufheben
Set-CsUser -identity “[UPN]” -EnterpriseVoiceEnabled $false -HostedVoicemail $false -OnPremlineURI $null