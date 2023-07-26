# Password Reset Script for Active Directory

This repository contains a PowerShell script that allows you to reset the password for a user in Active Directory. The script ensures a secure password reset process and provides options for enabling disabled accounts, if needed.

# Instructions
- Clone this repository or download the reset_password.ps1 script directly.

- Before running the script, ensure that you have the Active Directory module installed on the computer where you'll execute the script. This module provides the necessary cmdlets for interacting with Active # # Directory.

- Open a PowerShell window, navigate to the folder containing the reset_password.ps1 script, and execute the script.

- The script will prompt you to enter the username and the new password for the user. The password input is securely masked (hidden) as you type.

- The script will check if the user account exists in Active Directory. If the user doesn't exist, it will inform you and exit gracefully.

- If the user account is disabled, the script will ask for your confirmation to enable the account. You can choose to enable or keep it disabled.

- Next, the script will ask for confirmation before resetting the user's password. If you confirm, the password will be reset.

- Finally, a success message will be displayed, indicating that the password has been reset for the specified user.

# Note
- The script is designed to interact with Active Directory. Therefore, ensure you have appropriate permissions to modify user objects in Active Directory.

- Please use this script responsibly and only in accordance with your organization's security policies.

- If you encounter any issues or have suggestions for improvements, feel free to open an issue or submit a pull request in this repository.

*Disclaimer: This script is provided as-is without any warranty. Use it at your own risk. The author is not responsible for any direct or indirect damage caused by this script.*

Happy scripting!
