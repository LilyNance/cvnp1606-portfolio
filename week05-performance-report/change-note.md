# Change Note



## Change Applied



I stopped and removed four PowerShell background jobs that were generating continuous CPU activity on the system.



## Tool Used



- PowerShell

- Task Manager

- Resource Monitor



## Commands Used



```powershell

Get-Job | Stop-Job

Get-Job | Remove-Job

```



## Why I Chose This Remediation



Task Manager, Resource Monitor, and the Get-Process command all showed that the PowerShell jobs were using most of the CPU resources. Since these jobs were responsible for the high CPU usage, removing them directly addressed the identified bottleneck.



## Why This Change Is Safe



The PowerShell jobs were created only for testing and were not required for normal Windows operations. Removing them did not affect system files, services, applications, or user data.



## Why This Change Is Reversible



The change can be reversed by running the original PowerShell command used to create the background jobs. No permanent changes were made to the operating system.



## Evidence



Screenshot: Screenshots/change applied.png

