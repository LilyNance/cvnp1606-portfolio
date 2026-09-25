# Before Metrics



## Task Manager Performance



Screenshot: Screenshots/before-performance.png



### Recorded Metrics



- CPU Usage: 98%

- Memory Usage: 45%

- Disk Usage: 0%



## Top CPU Consumers



Screenshot: Screenshots/Before Get-Process.png



I used PowerShell to identify the processes using the most CPU resources. The results showed that multiple PowerShell processes were at the top of the list and were consuming the majority of the CPU time.



## Startup Apps



Screenshot: Screenshots/before 3.png



I reviewed the Startup Apps tab to check for programs that could contribute to slow startup performance or system congestion after login.



## Resource Monitor



Screenshot: Screenshots/before-resource-monitor.png



The CPU tab in Resource Monitor showed four PowerShell processes using most of the available processor resources while the simulated load was active.



## Bottleneck Hypothesis



I believe the main bottleneck was CPU usage. During testing, Task Manager showed the CPU running at about 98%, while memory usage was around 45% and disk usage was 0%.



I also checked Resource Monitor and found that four PowerShell processes were using most of the CPU resources. Because the CPU was nearly maxed out, the computer had fewer resources available for other applications, which could cause slow response times, lag, or temporary freezing when switching between programs.



Based on this evidence, I concluded that CPU saturation was the most likely cause of the performance issue.

