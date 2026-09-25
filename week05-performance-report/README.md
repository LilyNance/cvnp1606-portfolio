\# Week 5 Performance and Startup Triage



\## Scenario Summary



Riley Chen, an ACME branch manager, reported that the workstation would freeze for 10 to 15 seconds when switching between applications. The issue was most noticeable during the first few minutes after logging in, which created problems during meetings, presentations, and video calls.



My task was to investigate the workstation, identify the bottleneck using evidence, apply one safe remediation, and document the before and after results.



\## Tools Used and Purpose



\### Task Manager



Used to monitor CPU, memory, disk usage, and startup applications.



\### Resource Monitor



Used to identify which processes were consuming the most system resources.



\### PowerShell



Used to simulate CPU load, identify high CPU processes, and remove the test workload during remediation.



\## Steps Taken



\### Step 1: Restored Baseline



I restored the virtual machine to the W01\_CleanBaseline snapshot to ensure testing started from a known working state.



\### Step 2: Simulated a Performance Problem



I used PowerShell to create a CPU-intensive workload that simulated a performance issue.



\### Step 3: Captured Before Metrics



I collected evidence using:



\- Task Manager Performance

\- PowerShell Get-Process output

\- Task Manager Startup Apps

\- Resource Monitor CPU tab



The evidence showed:



\- CPU Usage: 98%

\- Memory Usage: 45%

\- Disk Usage: 0%



Resource Monitor showed four PowerShell processes consuming the majority of CPU resources.



\### Step 4: Identified the Bottleneck



Based on the collected evidence, I determined that CPU saturation was the most likely bottleneck. CPU utilization remained near 100% while memory and disk usage remained relatively low.



\### Step 5: Applied Remediation



I stopped and removed the PowerShell background jobs using:



```powershell

Get-Job | Stop-Job

Get-Job | Remove-Job

