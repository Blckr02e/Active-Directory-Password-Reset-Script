# Prompt for the username and new password
$username = Read-Host "Enter the username"
$password = Read-Host "Enter the new password" -AsSecureString

# Get the user object from Active Directory
$user = Get-ADUser -Identity $username

# Set the user's password
Set-ADAccountPassword -Identity $user -NewPassword $password -Reset

# Enable the user's account if it was previously disabled
if ($user.Enabled -eq $false) {
    Enable-ADAccount -Identity $user
}

# Display a message indicating success
Write-Host "Password has been reset for user $username"
