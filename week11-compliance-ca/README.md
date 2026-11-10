# Week 11 - Compliance, Conditional Access, Hello, and LAPS



## Portfolio Card



For this lab, I created and configured a Windows compliance policy in Intune and assigned it to the ACME-Pilot-Devices group. I reviewed device compliance results, learned how Conditional Access can be used to protect company resources, and documented how noncompliant devices should be handled. I also learned about Windows Hello for Business, Windows LAPS, and the security exception process.



## Files Included



- compliance-policy-summary.md

- conditional-access-memo.md

- laps-hello-note.md

- security-exception-template.md

- ai-disclosure.md

- evidence-report.txt

- Screenshots folder



## Week 11 Notes



I was able to create the compliance policy and assign it to the ACME-Pilot-Devices group in my tenant. Some parts of the lab could not be completed in my environment because the tenant was using Microsoft Entra Free and did not include the Microsoft Entra ID Premium features required for automatic MDM enrollment and Conditional Access policy creation.



The Week 11 module included an alternate evidence package with instructions to use the provided screenshots when a live Intune environment was not available. I included those files in the Instructor-evidence folder and used them where needed to complete the compliance analysis and documentation requirements.



My own screenshots are also included and show the policy configuration, group assignment, device investigation, licensing limitations, and Windows Hello sign-in options.



## Evidence Notes



The Screenshots folder contains screenshots collected from my tenant as well as the instructor-provided alternate evidence package referenced in the Week 11 module. The alternate evidence package was used where needed to complete compliance analysis and documentation when Microsoft Entra ID Premium features required for full Intune enrollment and Conditional Access testing were not available in my environment.



Screenshots documenting the Microsoft Entra Free licensing limitations are included in the Screenshots folder. These screenshots show the disabled Conditional Access policy creation options and the requirement for Microsoft Entra ID Premium features.



## Skills Demonstrated



- Creating and configuring Windows compliance policies in Microsoft Intune

- Assigning compliance policies to device groups

- Analyzing compliance results and identifying noncompliant settings

- Understanding how Conditional Access uses compliance status to control access

- Microsoft Entra ID device registration and enrollment concepts

- Windows Hello for Business authentication and security concepts

- Windows LAPS password management and rotation

- Security exception documentation and approval processes

- Policy rollout planning and report-only evaluation concepts

- Technical documentation and troubleshooting



## Troubleshooting Narrative



### 1. What compliance settings did you configure, and which ones failed on your test device? What does each failure mean in practical terms?



I configured three compliance settings: BitLocker, Minimum OS Version, and Microsoft Defender Antimalware. Based on the compliance results provided in the Week 11 evidence set, BitLocker failed while Defender Antimalware and Minimum OS Version passed. The BitLocker failure means the device is not encrypted and does not meet the organization's compliance requirements. The Defender and OS Version checks passed, meaning the device met those security and operating system requirements.



### 2. After creating the CA policy, what did the sign-in log show for your test account? If you could not access sign-in logs, explain what you would expect to see and why.



I was unable to create a Conditional Access policy or view report-only sign-in results because my tenant was using Microsoft Entra Free and did not include the required Premium features. If the policy had been available, I would expect the sign-in logs to show whether the device would be allowed or blocked based on its compliance status. Since the device was not compliant because of the BitLocker requirement, I would expect a report-only result indicating the device could be blocked if the policy were enforced.



### 3. What is the difference between Entra registration and Intune enrollment? Why does Emily Park's device being Entra registered but not enrolled matter for compliance?



Entra registration allows a device to be recognized by the organization, while Intune enrollment allows the organization to manage the device and evaluate compliance policies. Emily's device being registered but not enrolled means Intune cannot fully evaluate the device against company compliance requirements. Without enrollment, the organization cannot verify that the device meets security standards.



### 4. If ACME flips the CA policy from report-only to On tomorrow, which users are most at risk of being blocked? How would you identify them before making the change?



The users most at risk are employees using personal devices or devices that are not enrolled and compliant in Intune. Before enabling the policy, I would review compliance reports and report-only results to identify users who would be affected. This allows issues to be fixed before enforcement begins and helps avoid unexpected disruptions.



### 5. Describe a scenario where issuing a security exception to the compliance policy would be the right decision. What would the exception note need to include?



A security exception could be appropriate for a temporary lab device that cannot meet a compliance requirement because of hardware limitations. The exception should only be approved for a limited period of time and should have management approval. The note should include who the exception applies to, the business justification, the control being waived, the duration, the approver, and the compensating control being used to reduce risk.



### 6. What is one thing you would do differently if you were building this compliance and CA setup for a real organization with 500 endpoints instead of a lab tenant?



If I were deploying this in an organization with 500 endpoints, I would use a phased rollout instead of applying the policy to everyone at once. I would start with a pilot group, review compliance and report-only results, and resolve issues before expanding the deployment. This would reduce the risk of accidentally blocking large numbers of users and make the rollout easier to manage.

