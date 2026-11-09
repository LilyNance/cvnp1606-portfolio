# Enrollment Diagnosis



## State



The Microsoft Entra join was successful because AzureAdJoined is set to YES. WorkplaceJoined and DomainJoined are both NO, which indicates the device is not using workplace registration or a traditional Active Directory domain. However, the MDMUrl field is blank, which means Intune enrollment did not complete successfully.



## Root Cause



The most likely cause is that automatic Intune enrollment did not occur after the Entra join process. A blank MDMUrl indicates the device joined Microsoft Entra ID but was not handed off to Intune management.



## Remediation



The first step would be to verify that the user has an Intune license assigned and that the MDM auto-enrollment scope includes the user account. In the Intune Admin Center, check:



Devices → Enrollment → Windows → Automatic Enrollment



The MDM user scope should be set to All or include a group containing the user.



## Verification



From the endpoint side, run dsregcmd /status again and verify that MDMUrl is populated.



From the portal side, confirm the device appears in:



Devices → All devices



The device should show a recent check-in time and a management state of Managed.

