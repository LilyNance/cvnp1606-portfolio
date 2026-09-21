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





\## Steps Performed



1\. Restored the lab environment to the approved baseline snapshot and logged in using an administrator account.



2\. Created three local security groups:

&#x20;  - HR-Managers

&#x20;  - HR-Staff

&#x20;  - Audit-Readonly



3\. Created a local test account named hr-staff-test and added it to the HR-Staff group to simulate a typical HR employee.



4\. Verified group creation and group membership using PowerShell commands and captured screenshots for evidence.



5\. Created the required folder structure:

&#x20;  - C:\\HR

&#x20;  - C:\\HR\\Payroll

&#x20;  - C:\\HR\\Payroll\\CurrentYear

&#x20;  - C:\\HR\\Payroll\\Archive



6\. Exported the original folder permissions to acl-before.txt to create a documented baseline before making changes.



7\. Created the Payroll network share and verified that the Everyone permission was not present.



8\. Assigned NTFS permissions based on job responsibilities:

&#x20;  - HR-Managers received Full Control.

&#x20;  - HR-Staff received Modify permissions.

&#x20;  - Audit-Readonly received Read \& Execute permissions.



9\. Configured share permissions to match the required access levels:

&#x20;  - HR-Managers received Full access.

&#x20;  - HR-Staff received Change access.

&#x20;  - Audit-Readonly received Read access.



10\. Verified both NTFS permissions and share permissions using PowerShell commands and screenshots.



11\. Exported the completed folder permissions to acl-after.txt to document the final permission configuration.



12\. Created an administrator-owned test file to use during access validation testing.



13\. Signed in as the hr-staff-test account and connected to the Payroll share using the network path:



&#x20;   \\\\localhost\\Payroll



14\. Performed validation testing from the HR-Staff user context by:

&#x20;   - Creating a file

&#x20;   - Editing and saving a file

&#x20;   - Deleting an administrator-created file

&#x20;   - Viewing security settings without administrative control



15\. Recorded all test results as ALLOWED or BLOCKED and documented the results in access-test-results.md.



16\. Created a permissions matrix showing the relationship between NTFS permissions, share permissions, and effective network access.



17\. Documented the security design rationale and explained how least-privilege principles were applied to protect sensitive payroll information.



18\. Collected screenshots, ACL exports, access-test evidence, and portfolio documentation for submission to GitHub.



\## Evidence Files



\- acl-before.txt

\- acl-after.txt

\- access-test-results.md

\- evidence-report.txt

\- Screenshots of group creation

\- Screenshots of share permissions

\- Screenshots of access testing



\## Troubleshooting Narrative



\### 1. What went wrong, or what could realistically have gone wrong?



The hr-staff-test account was created successfully but did not appear on the login screen for testing.



\### 2. What evidence did you check first?



I checked the local user accounts and local group memberships using PowerShell commands.



\### 3. What did you try?



I reviewed the Users group membership and verified the existence of the hr-staff-test account.



\### 4. What fixed it, or what would you try next?



I added hr-staff-test to the Users group and then signed out and signed back in.



\### 5. How did you verify the result?



The account appeared on the login screen and I successfully logged in as hr-staff-test. I then completed all required access tests.



\### 6. What was the support or security impact of the issue or fix?



Without proper group membership, the account could not be used for access validation testing. Adding the account to the correct group allowed testing while maintaining least-privilege access.





\## What I Can Do Now



I can create secure Windows file shares, assign NTFS and share permissions using security groups, validate effective user access, and document permission configurations so support staff and auditors can verify access controls.

