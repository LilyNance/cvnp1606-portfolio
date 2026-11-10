## **Compliance Policy Summary**

### Policy Information

Policy Name: ACME-Windows-Baseline-Compliance



Assigned Group: ACME-Pilot-Devices



I created the ACME-Windows-Baseline-Compliance policy in Intune and assigned it to the ACME-Pilot-Devices group. During testing, my tenant did not have any Intune-managed devices available for evaluation. Because of that, I used the alternate evidence provided in the Week 11 module to review the compliance results and complete the analysis.



### Compliance Results

**Setting	Required Value	Observed Value	Result**

BitLocker	Require	Not enabled	Fail

Microsoft Defender Antimalware	Require	Enabled	Pass

Minimum OS Version	10.0.19041	Meets requirement	Pass

#### Findings

The compliance results showed that BitLocker was the only setting that failed. This is common in a lab virtual machine because encryption is not usually enabled by default.



Microsoft Defender Antimalware passed the compliance check and met the policy requirement.



The operating system version also passed because it met the minimum required version of 10.0.19041.



Based on these results, the device would not be considered fully compliant because the BitLocker requirement was not met. If a Conditional Access policy required compliant devices, access could be restricted until the compliance issue was resolved.

