# CVNP1606 Week 4 Assignment - Storage, Sharing, and Permissions

## Scenario Summary

This lab involved creating a secure HR payroll share for ACME. Three security groups were created with different levels of access. HR-Managers were assigned Full Control, HR-Staff were assigned Modify access, and Audit-Readonly was assigned Read-only access. The Everyone permission was removed from the share and access was validated using a test account.

## Tools Used

- Windows 11
- PowerShell
- File Explorer
- SMB Share Management Commands
- icacls
- Local Users and Groups
- Microsoft Copilot

## Steps Performed

1. Restored the lab environment to the approved baseline snapshot and logged in using an administrator account.

2. Created three local security groups:
   - HR-Managers
   - HR-Staff
   - Audit-Readonly

3. Created a local test account named **hr-staff-test** and added it to the HR-Staff group.

4. Verified group creation and group membership using PowerShell.

5. Created the folder structure:
   - `C:\HR`
   - `C:\HR\Payroll`
   - `C:\HR\Payroll\CurrentYear`
   - `C:\HR\Payroll\Archive`

6. Exported the original permissions to **acl-before.txt**.

7. Created the Payroll share and verified the Everyone group was removed.

8. Assigned NTFS permissions:
   - HR-Managers: Full Control
   - HR-Staff: Modify
   - Audit-Readonly: Read & Execute

9. Assigned share permissions:
   - HR-Managers: Full
   - HR-Staff: Change
   - Audit-Readonly: Read

10. Verified share and NTFS permissions.

11. Exported the final permissions to **acl-after.txt**.

12. Created an administrator-owned test file for access validation.

13. Signed in as **hr-staff-test** and connected to the Payroll share.

14. Performed access testing by:
    - Creating a file
    - Editing and saving a file
    - Deleting an administrator-created file
    - Viewing security settings without administrative control

15. Recorded all results in **access-test-results.md** and created a permissions matrix.

16. Generated the evidence report and uploaded all required files to GitHub.

## Evidence Files

- acl-before.txt
- acl-after.txt
- access-test-results.md
- ai-validation.md
- evidence-report.txt
- Screenshots

## Troubleshooting Narrative

### What went wrong?

The hr-staff-test account did not initially appear on the login screen.

### What evidence did I check first?

I verified the account existed and reviewed local group memberships using PowerShell.

### What did I try?

I checked whether the account belonged to the required local groups and reviewed the Users group membership.

### What fixed the issue?

I added hr-staff-test to the Users group and then signed out and signed back in.

### How did I verify the result?

I successfully logged in as hr-staff-test and completed all required access tests.

### What was the support or security impact?

Without proper group membership, access validation testing could not be completed. Adding the account to the correct group allowed testing while maintaining least-privilege access.

## AI Disclosure

Microsoft Copilot was used to explain lab requirements, PowerShell commands, documentation formatting, troubleshooting guidance, and permissions concepts. All configuration changes, permission assignments, ACL exports, and access tests were verified directly on the virtual machine before submission.

## What I Can Do Now

I can create secure Windows file shares, configure NTFS and share permissions, validate effective access from user account contexts, and document access-control configurations so support teams and auditors can verify access permissions.