\# Week 03 Account Audit



\*\*Student:\*\* Lily Nance



\## Lab Objective



The purpose of this lab was to create a standard user account, test User Account Control (UAC) elevation behavior, audit local user and group membership using PowerShell, and apply the principle of least privilege.



\## Create a Standard User Account



I used \*\*Method B (Local Users and Groups - lusrmgr.msc)\*\* to create a standard user account. I selected this method because it is commonly used in enterprise environments, does not require a Microsoft account, and allows administrators to manage local accounts directly through the Local Users and Groups console.



\*\*Account Created:\*\* AcmeSeasonal01



The account was verified as a member of the Users group and not the Administrators group. After creating the account, I reviewed the Member Of tab to confirm that it belonged to the Users group and did not have administrative privileges.



\### Evidence



\- Screenshot of AcmeSeasonal01 in Local Users and Groups.

\- Screenshot showing group membership.



\---



\## Step 2: Test UAC Elevation Behavior



After creating the AcmeSeasonal01 standard user account, I signed out of the administrator account and signed in using the new standard user account. To test User Account Control (UAC), I attempted to access tools and settings that require elevated permissions.



When I attempted to perform an administrative action, Windows displayed a User Account Control prompt requesting administrator credentials. Because the account was configured as a standard user, it did not have permission to complete the action without approval from an administrator.



This test demonstrated how UAC helps protect Windows systems by preventing standard users from making system-level changes without authorization. It also showed how organizations can allow users to perform daily tasks while restricting access to administrative functions.



\### Evidence



\- Screenshot of the UAC credential prompt while signed in as AcmeSeasonal01.



\---



\## Step 3: Audit Local Group Membership



I used PowerShell to review local users and administrator group membership.



\### Commands Used



```powershell

Get-LocalUser



Get-LocalGroupMember -Group "Administrators"

```



The first command, `Get-LocalUser`, displayed all local user accounts configured on the system. The output confirmed that the AcmeSeasonal01 account had been successfully created and was active on the system.



The second command, `Get-LocalGroupMember -Group "Administrators"`, displayed the members of the local Administrators group. The results showed that administrator accounts were listed, but AcmeSeasonal01 was not included. This confirmed that the account remained a standard user and did not have elevated privileges.



After reviewing the results, I exported the output from both commands into a file named `local-users-export.txt`. I then verified the file contents to ensure the export was successful.



\### Evidence



\- Screenshot of Get-LocalUser output.

\- Screenshot of Get-LocalGroupMember output.

\- Screenshot verifying local-users-export.txt contents.

\- local-users-export.txt included in submission folder.



\---



\## Results



The account creation, UAC testing, and PowerShell audit were completed successfully. \*\*Method B (lusrmgr.msc)\*\* was used to create and manage the standard user account. The evidence gathered during the lab confirmed that AcmeSeasonal01 was created as a standard user account and was not a member of the Administrators group. The UAC prompt also demonstrated that administrator credentials were required before elevated actions could be performed. The PowerShell audit further verified that the account followed the principle of least privilege by maintaining standard user permissions.



\---



\## Lessons Learned



This lab helped me better understand how Windows user accounts and permissions work. I learned how to create and manage local user accounts, verify group membership, and use PowerShell to audit user access. I also gained a better understanding of the principle of least privilege and why it is important in a business environment.



By testing User Account Control and reviewing local group membership, I was able to see how Windows restricts standard users from performing administrative tasks without authorization. This security measure helps reduce the risk of accidental changes, malware infections, and unauthorized system modifications. Overall, this lab reinforced the importance of granting users only the access they need to perform their job duties while maintaining the security of the system.

