# Week 10 Intune Enrollment

## Overview

In this lab, I created device groups in Microsoft Entra, joined a Windows 11 VM to Microsoft Entra ID, checked the join status with dsregcmd, and collected enrollment evidence from Intune.

## Evidence Collected

- Snapshot Manager showing the clean baseline
- Access work or school before enrollment
- Intune Admin Center dashboard
- ACME-Pilot-Devices group
- ACME-All-Devices group
- Access work or school after enrollment
- dsregcmd /status output
- Intune Devices → All devices page

## What I Can Do Now

I can create Microsoft Entra device groups, join Windows devices to Microsoft Entra ID, check device join status with dsregcmd, troubleshoot enrollment problems, and help plan a phased Intune rollout.

## Troubleshooting Narrative

### 1. What was the most significant challenge you encountered during tenant setup or enrollment?

The biggest challenge was getting the VM enrolled the right way. At first the device was only workplace registered, so I had to go back and make sure it was actually joined to Microsoft Entra ID.

### 2. What evidence did you check first when something did not work as expected, and why?

The first thing I checked was dsregcmd /status because it shows whether the device is joined correctly and if enrollment was successful.

### 3. What did you try to resolve the issue?

I checked my Intune license, reviewed the enrollment settings in Intune, verified the device join status, and looked at the Devices section in the Intune portal to see if the device appeared.

### 4. What resolved the issue, or what would you try next if you could not resolve it in the lab session?

I was able to get the device successfully joined to Microsoft Entra ID. If I had more time, I would continue troubleshooting the Intune enrollment settings and automatic enrollment configuration to determine why MDMUrl remained blank.

### 5. How did you verify that enrollment succeeded from both the endpoint side and the portal side?

On the VM, I used dsregcmd /status and confirmed AzureAdJoined was set to YES. In the portal, I checked Intune and looked for the device under All Devices.

### 6. What would be the business impact on ACME if the pilot enrollment process had a misconfiguration that was not caught before full rollout?

If a problem like this was missed before rollout, devices might not receive policies, software deployments, or security settings. That could create extra support tickets and slow down users across the company.