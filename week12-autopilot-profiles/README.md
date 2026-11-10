# Week 12 - Autopilot, Provisioning, and Configuration Profiles



## What I Can Do Now



I can choose the correct Windows Autopilot deployment mode for different business situations, create and target Intune configuration profiles, and document a repeatable deployment process that another technician can follow with minimal support.



## Scenario Summary



In this lab, I reviewed Windows Autopilot deployment modes and matched them to different ACME business scenarios. I also reviewed configuration profile evidence, profile assignments, Enrollment Status Page settings, and deployment status results. Using the provided evidence, I documented the deployment decision process and created documentation that explains how the deployment can be reproduced in a real-world environment.



## Tools Used



- Microsoft Intune Admin Center

- Microsoft Entra ID

- Windows Autopilot

- Enrollment Status Page (ESP)

- Settings Catalog Configuration Profiles

- PowerShell

- GitHub

- Microsoft Copilot



## Steps Taken



1\. Restored the W01\_CleanBaseline snapshot.

2\. Reviewed the three Windows Autopilot deployment modes.

3\. Evaluated the four ACME deployment scenarios.

4\. Created a deployment decision tree with recommended deployment modes.

5\. Reviewed the Enrollment Status Page configuration shown in the provided evidence.

6\. Reviewed the instructor-provided configuration profile settings and assignment evidence.

7\. Reviewed the instructor-provided profile status evidence showing successful deployment.

8\. Documented profile targeting, assignment, and verification information based on the provided evidence.

9\. Created a repeatable deployment procedure for another technician to follow.

10\. Collected screenshots and supporting evidence.

11\. Verified required deliverables using the evidence collection script.

12\. Committed all completed files to GitHub.



## Evidence Included



- Deployment decision tree

- Profile evidence document

- Repeatable deployment note

- Autopilot profile screenshots

- Enrollment Status Page screenshots

- Configuration profile screenshots

- Assignment screenshots

- Profile status screenshots

- PowerShell configuration evidence

- Evidence report

- AI disclosure



## Week 12 Notes



The Week 12 lab guide states that if Autopilot tasks cannot be completed because of hardware or licensing limitations, the instructor-provided screenshot package may be used as evidence. For this assignment, I used the provided Autopilot, Enrollment Status Page, configuration profile, assignment, and profile status screenshots to complete the required analysis and documentation.

The instructor-provided evidence package was used in accordance with the Week 12 lab guide, which allows alternate evidence when Autopilot tasks cannot be completed due to hardware or licensing constraints.

The instructor evidence package included screenshots showing the ACME Standard User Autopilot profile, Enrollment Status Page configuration, ACME-Display-Timeout-Policy settings, profile assignments, group targeting, and successful profile application results. These screenshots were used as supporting evidence when completing the deployment decision tree, profile evidence document, and deployment documentation.

My own screenshots are also included where applicable, along with the instructor-provided evidence package used for this assignment.



# Skills Demonstrated



- Windows Autopilot deployment planning

- User-driven deployment scenarios

- Self-deploying deployment scenarios

- Pre-provisioning (White Glove) deployment scenarios

- Enrollment Status Page review and verification

- Intune configuration profile management

- Group-based profile targeting

- Configuration profile verification and troubleshooting

- Device provisioning documentation

- Deployment planning and support procedures

- Technical documentation



## Troubleshooting Narrative



### 1. What went wrong, or what could realistically have gone wrong?



One potential issue is that an Autopilot profile, Enrollment Status Page configuration, or device configuration profile may not be assigned correctly. Another possible issue is that a device is not a member of the intended deployment group, preventing policies from being applied successfully.



### 2. What evidence did you check first?



I reviewed the instructor-provided screenshots showing the profile assignment, Enrollment Status Page settings, device membership information, configuration settings, and profile status results. These screenshots provided the evidence used to analyze the deployment process and configuration profile behavior.



### 3. What did you try?



I reviewed the provided profile assignments, targeting information, group membership screenshots, and deployment status evidence. I compared the screenshots against the assignment requirements to confirm that the correct configuration, targeting, and profile settings were documented.



### 4. What fixed it, or what would you try next?



If a profile was not applying correctly, I would first verify group membership, confirm assignment settings, review device check-in status, and check for conflicting configurations. If the issue continued, I would trigger another sync and review the deployment status again.



### 5. How did you verify the result?



The instructor-provided profile status screenshot showed the ACME-Display-Timeout-Policy with a status of \*\*Succeeded\*\*. Based on the evidence provided for the lab, this indicates that the profile was successfully assigned and applied to the target device.



### 6. What was the support or deployment impact of the issue or fix?



If deployment profiles or configuration settings are not applied correctly, users may receive devices that do not meet company requirements. Correcting assignment or targeting issues helps ensure consistent deployments, reduces support requests, and improves the overall deployment experience for end users.

