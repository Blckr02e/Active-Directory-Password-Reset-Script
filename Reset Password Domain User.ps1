# Prompt for the username and new password
$username = Read-Host "Enter the username"
$password = Read-Host "Enter the new password" -AsSecureString

# Get the user object from Active Directory
$user = Get-ADUser -Identity $username -ErrorAction SilentlyContinue

# Check if the user exists
if (!$user) {
    Write-Host "User '$username' does not exist in Active Directory. Password reset aborted."
    exit
}

# Check if the account is disabled
if ($user.Enabled -eq $false) {
    $enableAccount = Read-Host "Account is disabled. Do you want to enable? (Y/N)"
    if ($enableAccount -eq "Y" -or $enableAccount -eq "y") {
        Enable-ADAccount -Identity $user
        Write-Host "User account has been enabled."
    } else {
        Write-Host "User account remains disabled. Password reset aborted."
        exit
    }
}

# Ask for confirmation before resetting the password
$confirm = Read-Host "Are you sure you want to reset the password for user '$username'? (Y/N)"
if ($confirm -ne "Y" -and $confirm -ne "y") {
    Write-Host "Password reset aborted."
    exit
}

# Set the user's password
Set-ADAccountPassword -Identity $user -NewPassword $password -Reset

# Display a message indicating success
Write-Host "Password has been reset for user $username"
