# Verbindung mit Teams Connector herstellen
Connect-MicrosoftTeams -Credential $O365cred
$session = New-CsOnlineSession -Credential $O365cred
Import-PsSession $session

# Telefonnummer mit Ressource verknüpfen
Set-CsOnlineApplicationInstance -Identity [ressource]@[initialdomain].onmicrosoft.com -OnpremPhoneNumber +41xxxxxxxxx

# Telefonnummer mit User verknüpfen
Set-CsUser -identity “[UPN]” -EnterpriseVoiceEnabled $true -HostedVoicemail $true -OnPremlineURI tel:+41xxxxxxxxx