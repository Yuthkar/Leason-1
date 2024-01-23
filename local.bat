# Create Outlook application object
$outlook = New-Object -ComObject Outlook.Application

# Trigger a send/receive operation for all accounts
$namespace = $outlook.GetNamespace("MAPI")
$sendReceiveGroups = $namespace.SendAndReceive()

# Wait for the send/receive operation to complete (adjust sleep duration as needed)
Start-Sleep -Seconds 30

# Close Outlook
$outlook.Quit()
