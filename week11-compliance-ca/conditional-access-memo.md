# Conditional Access Memo



If the Conditional Access policy was changed from report-only mode to enforced mode, Emily Park would not be able to open Outlook from her personal device. When she signs in, Microsoft 365 would check if the device meets ACME's security requirements. Since the device is not enrolled and compliant in Intune, access would be blocked and she would see a message explaining that the device doesn't meet the required security policies.



If Emily calls the helpdesk, the technician should explain why she was blocked and help her get the device enrolled in Intune. Once the device is enrolled and meets the compliance requirements, she should be able to access Outlook again. If enrollment is not possible, the technician should follow the security exception process and get the proper approval before granting any temporary exception.



Report-only mode is a good first step because it lets ACME see what would happen before actually blocking anyone. It helps identify which users and devices would be affected so problems can be fixed ahead of time. This makes the rollout smoother and helps avoid accidentally locking users out of resources they need for work.

