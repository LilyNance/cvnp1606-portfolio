# CVNP1606 Week 9 Midterm - Service Desk Surge



## Prioritization Rationale



I worked Ticket A first because the cashier account was locked and the shift could not start until the account was restored. I worked Ticket D second because the new employee could not access any ACME systems and had a deadline to complete onboarding forms by the end of the day. I worked Ticket C third because the missing audio device would affect an upcoming video call, but the user could still do other work in the meantime. I worked Ticket B last because the computer was slow but still usable. I based my priority order on which issues completely stopped someone from working versus issues that only slowed them down.



## Ticket A - Account Lockout



I used Local Users and Groups, Event Viewer, and PowerShell to investigate the cashier account issue. I found that the acme-pos-cashier01 account was locked out. I checked the Security log and found Event ID 4625 for failed login attempts and Event ID 4740 for the account lockout. I opened the account properties and cleared the "Account is locked out" box to restore access. After applying the change, I reopened the account properties and confirmed the account was no longer locked out. The account was successfully restored and the ticket was closed.



## Ticket D - Network Connectivity



I used ipconfig, ping tests, and Test-NetConnection to investigate the network issue. The workstation had a valid IP address, subnet mask, default gateway, and DNS servers configured. The loopback test and local IP test both passed, which showed that the TCP/IP stack and network adapter were working correctly. The gateway test failed with 100% packet loss, and the external connectivity test also failed. Test-NetConnection failed as well, confirming that the workstation could not establish network communication outside the local system. Based on the results, the issue appears to be at the gateway or network layer. Since the problem is outside the workstation itself, I identified the issue and escalated the ticket to the appropriate team for further investigation.



### User Instructions for Marcus



Hi Marcus,



I found a network connection issue that is preventing your computer from accessing ACME systems and other network resources. The issue has been identified, and I have escalated it to the appropriate team for further investigation. You do not need to make any changes or troubleshoot anything on your end.



We will continue working on the problem and will let you know as soon as access has been restored. Once the issue is resolved, you should be able to access your shared drives, internal websites, and onboarding forms normally.



Thank you for your patience.



## Ticket C - Driver Failure



I used Device Manager to investigate the missing audio device. The device was listed as "Audio Device on High Definition Audio Bus" and showed Code 28, which indicated that the driver was not installed. Because the issue appeared to be caused by a missing driver, I selected Update Driver and used the Search automatically for drivers option. Windows successfully found and installed the correct driver.



After the installation completed, the device moved to the Sound, video and game controllers section in Device Manager and no longer showed an error. I verified the fix by checking the device status, which reported that the device was working properly. A detailed change note was completed in change-note.md.



## Ticket B - Slow Workstation



I used Task Manager and Task Scheduler to investigate the workstation performance issue. In Task Manager, I reviewed the Processes tab sorted by CPU and memory usage. Desktop Window Manager was the highest CPU consumer at the time of testing, while Microsoft Defender Antimalware Service and Windows Explorer were among the largest memory consumers.



I reviewed the Startup Apps list and found multiple enabled startup items, including OneDrive.exe and powershell.exe (2), both showing a High startup impact. I also reviewed Task Scheduler and found a logon-triggered task named CVNP1606\_CloudSyncAgent that could contribute to startup activity and resource usage.



### Before/After Comparison



Before: The user reported slow application startup times and general system sluggishness. Startup applications with High startup impact and a logon-triggered scheduled task were identified during the investigation.



After: Resource usage was reviewed and potential causes were identified. No immediate operating system or hardware failures were detected. Further monitoring would be recommended to determine whether the startup applications or scheduled task are the primary cause of the performance issue.



### Prioritization Retrospective



After working all four tickets, I would keep the same priority order. Ticket A prevented the shift from starting, Ticket D prevented a new employee from accessing ACME resources, Ticket C had a time-sensitive meeting deadline, and Ticket B was a performance issue that did not completely stop work.



## Troubleshooting Narrative



### 1. What went wrong across the queue, or what was the most significant issue you encountered?



The queue had four different issues including a locked account, a network problem, a missing audio driver, and a slow workstation. The biggest issue was the network connectivity problem because the user could not access ACME systems or complete the required onboarding tasks.



### 2. What evidence did you check first, and why?



Before making any changes, I checked the evidence for each ticket to understand what was causing the problem. For Ticket A, I checked the account status and Security logs. For Ticket D, I reviewed the network configuration and connectivity tests. For Ticket C, I checked Device Manager and the device error code. For Ticket B, I reviewed Task Manager, startup apps, and scheduled tasks. This helped me understand each issue before taking action.



### 3. What did you try on each ticket?



For Ticket A, I reviewed the account status and Security log events before unlocking the account. For Ticket D, I used ipconfig, ping tests, and Test-NetConnection to find where the network connection was failing. For Ticket C, I checked the device status and updated the missing driver. For Ticket B, I reviewed CPU usage, memory usage, startup applications, and scheduled tasks to look for possible causes of the slowdown.



### 4. What resolved each issue, or what would you try next if you could not resolve it?



Ticket A was resolved by unlocking the account. Ticket C was resolved by updating the missing audio driver. Ticket D could not be fully resolved because the issue appeared to be at the gateway or network layer, so the ticket was escalated for further investigation. For Ticket B, I identified possible causes of the slowdown, but additional monitoring would be needed to determine the exact cause.



## 5. How did you verify the result for each ticket you closed?



For Ticket A, I reopened the account properties and confirmed the account was no longer locked out. For Ticket C, I checked Device Manager and confirmed that the audio device was working properly and no longer showed an error. For Ticket D, I verified the issue through network testing and documented the results before escalating the ticket. For Ticket B, I reviewed Task Manager and Task Scheduler findings to verify my investigation results.



### 6. What was the support or security impact of the issues or fixes across the queue?



The account lockout prevented an employee from starting work. The network issue prevented access to ACME systems and onboarding resources. The audio driver issue could have affected an important video call. The slow workstation impacted productivity by making applications slower to open and use. Resolving and documenting these issues helped reduce downtime and provided clear information for future support.



## What I Can Do Now



I can prioritize and work multiple Windows support tickets, troubleshoot account, network, driver, and performance issues, document my findings, collect evidence, and escalate issues when they are outside my support scope.

