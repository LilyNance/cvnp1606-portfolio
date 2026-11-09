\# Tenant Setup Notes



\## Tenant Name



Alexandria college



\## Trial Expiry Date



12/9/2026



\## Groups Created



\### ACME-Pilot-Devices



\- Group Type: Security

\- Membership Type: Assigned



Purpose:



This group is used for pilot devices that will be manually added and tested before a larger rollout. Assigned membership gives administrators full control over which devices participate.



\### ACME-All-Devices



\- Group Type: Security

\- Membership Type: Dynamic Device



Purpose:



This group automatically includes Windows devices by using a dynamic membership rule. This reduces manual administrative effort and ensures newly enrolled Windows devices are added automatically.



Dynamic rule:



```text

deviceOSType Equals Windows

