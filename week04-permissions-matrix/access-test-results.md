\# Access Test Results



\## Test 1 - Create File



Result: ALLOWED



Successfully created TestFile.txt in the \\\\localhost\\Payroll\\CurrentYear folder.



\## Test 2 - Edit File



Result: ALLOWED



Successfully opened, edited, and saved TestFile.txt.



\## Test 3 - Delete Admin File



Result: ALLOWED



Successfully deleted AdminFile.txt that was created by the administrator account.



\## Test 4 - Security Permissions



Result: BLOCKED



I was able to view the Security tab and Advanced Security Settings for the Payroll share. However, I was not able to take ownership of the folder or modify administrative permissions. Access to change security settings remained restricted to administrators.



\## Permissions Matrix



| Group Name | NTFS Permission | Share Permission | Effective Network Access | Test Result |

|------------|----------------|------------------|--------------------------|-------------|

| HR-Managers | Full Control | Full Control | Full Control | Not Tested |

| HR-Staff | Modify | Change | Modify | ALLOWED |

| Audit-Readonly | Read \& Execute | Read | Read Only | Not Tested |



\## Least-Privilege Rationale



Audit-Readonly was assigned Read access because auditors only need to review payroll information and should not be able to create, modify, or delete files. Limiting their access helps protect sensitive payroll data and follows the principle of least privilege.



The Everyone group was removed from the share because it provides broader access than necessary. Restricting access through specific security groups ensures that only authorized users can access payroll information and reduces the risk of unauthorized access.

