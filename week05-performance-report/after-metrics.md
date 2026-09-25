# After Metrics



## Before and After Comparison



### CPU Usage



Before: 98%



After: 9%



Result: Improved significantly.



### Memory Usage



Before: 45%



After: 42%



Result: Improved slightly.



### Disk Usage



Before: 0%



After: 0%



Result: No significant change.



## Task Manager Performance



Screenshot: Screenshots/after-performance.png



## Top CPU Consumers



Screenshot: Screenshots/after-getprocess.png



After the remediation, the PowerShell processes were no longer consuming large amounts of CPU resources.



## Resource Monitor



Screenshot: Screenshots/after-resource-monitor.png



Resource Monitor confirmed that CPU usage returned to normal levels after the background jobs were removed.



## Conclusion



The remediation was successful. CPU utilization dropped from 98% to 9% after the PowerShell background jobs were stopped and removed. This supports the hypothesis that CPU saturation was causing the slowdown. A reduction in CPU usage should improve responsiveness and reduce the likelihood of application freezing when switching between programs.

