\# CVNP1606 Week 4 Assignment - Storage, Sharing, and Permissions



\## Scenario Summary



This lab involved creating a secure HR payroll share for ACME. Three security groups were created with different levels of access. HR-Managers were assigned Full Control, HR-Staff were assigned Modify access, and Audit-Readonly was assigned Read-only access. The Everyone permission was removed from the share and access was validated using a test account.



\## Tools Used



\- Windows 11

\- PowerShell

\- File Explorer

\- SMB Share Management Commands

\- icacls

\- Local Users and Groups

\- Microsoft Copilot



\## Steps Performed



1\. Restored the lab environment to the approved baseline snapshot and logged in using an administrator account.



2\. Created three local security groups:

&#x20;  - HR-Managers

&#x20;  - HR-Staff

&#x20;  - Audit-Readonly



3\. Created a local test account named \*\*hr-staff-test\*\* and added it to the HR-Staff group.



4\. Verified group creation and group membership using PowerShell.



5\. Created the folder structure:

&#x20;  - `C:\\HR`

&#x20;  - `C:\\HR\\Payroll`

&#x20;  - `C:\\HR\\Payroll\\CurrentYear`

&#x20;  - `C:\\HR\\Payroll\\Archive`



6\. Exported the original permissions to \*\*acl-before.txt\*\*.



7\. Created the Payroll share and verified the Everyone group was removed.



8\. Assigned NTFS permissions:

&#x20;  - HR-Managers: Full Control

&#x20;  - HR-Staff: Modify

&#x20;  - Audit-Readonly: Read \& Execute



9\. Assigned share permissions:

&#x20;  - HR-Managers: Full

&#x20;  - HR-Staff: Change

&#x20;  - Audit-Readonly: Read



10\. Verified share and NTFS permissions.



11\. Exported the final permissions to \*\*acl-after.txt\*\*.



12\. Signed in as \*\*hr-staff-test\*\* and completed access testing.



13\. Documented test results and created the permissions matrix.



14\. Collected evidence and uploaded all required files to GitHub.



\## Evidence Files



\- acl-before.txt

\- acl-after.txt

\- access-test-results.md

\- ai-validation.md

\- evidence-report.txt

\- Screenshots



\## Troubleshooting Narrative



\### What went wrong?



The hr-staff-test account did not initially appear on the login screen.



\### What evidence did I check first?



I verified the account existed and reviewed group memberships using PowerShell.



\### What did I try?



I checked whether the account belonged to the proper local groups.



\### What fixed the issue?



I added the hr-staff-test account to the Users group and signed out and back in.



\### How did I verify the result?



The account successfully logged in and completed all required access tests.



\### What was the support or security impact?



Without proper group membership, validation testing could not be completed. Adding the account to the correct group allowed testing while maintaining least-privilege access.



\## AI Disclosure



Microsoft Copilot was used to explain lab requirements, PowerShell commands, documentation formatting, and troubleshooting guidance. All work was verified directly on the virtual machine before submission.



\## What I Can Do Now



I can create secure Windows file shares, configure NTFS and share permissions, validate effective access from user account contexts, and document access-control configurations for support teams and auditors.

