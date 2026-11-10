\# Deployment Decision Tree



\## Scenario 1 - New Hire Receiving a Laptop on Their First Day at the ACME Office



\### Recommended Mode

User-driven



\### Why This Mode Is Correct

I chose User-driven deployment because the laptop is assigned to one specific employee. The new hire can sign in with their Microsoft Entra ID account during the out-of-box experience (OOBE) and complete the setup process themselves. This is the most common Autopilot deployment method for employee laptops.



\### Alternative That Would Not Work Well

Self-deploying would not be a good choice because it is meant for devices that do not have a specific assigned user. A new-hire laptop needs to be connected to an individual employee account.



\---



\## Scenario 2 - Shared Kiosk Device in the ACME Break Room



\### Recommended Mode

Self-deploying



\### Why This Mode Is Correct

I chose Self-deploying because the kiosk is a shared device and does not belong to one person. The device can be configured automatically without requiring a user to sign in during setup. This makes it a good fit for a kiosk or other shared-use device.



\### Alternative That Would Not Work Well

User-driven would not work well because there is no single employee assigned to the kiosk who would complete the setup process.



\---



\## Scenario 3 - Remote Employee Receiving a Pre-Staged Laptop Shipped from the Nexus Warehouse



\### Recommended Mode

Pre-provisioning (White Glove)



\### Why This Mode Is Correct

I chose Pre-provisioning because IT can prepare the laptop before it is shipped to the employee. Applications, policies, and settings can be installed ahead of time so the employee has less work to do when the device arrives. This helps reduce setup time and support requests.



\### Alternative That Would Not Work Well

Self-deploying would not be the best option because the laptop is assigned to a specific employee and will need user-specific settings and applications.



\---



\## Scenario 4 - Replacement Laptop for an Existing Employee Whose Primary Device Failed



\### Recommended Mode

Pre-provisioning (White Glove)



\### Why This Mode Is Correct

I chose Pre-provisioning because the employee needs a working device as quickly as possible. IT can prepare the replacement laptop, install required applications, apply policies, and make sure everything is ready before handing it to the employee. This helps reduce downtime and gets the employee back to work faster.



\### Alternative That Would Not Work Well

Self-deploying would not be a good choice because the laptop belongs to a specific employee and may require company applications and settings to be installed before it is used.

