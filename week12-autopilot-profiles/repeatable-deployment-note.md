# Repeatable Deployment Note

### ACME Display Timeout Profile Deployment

Sign in to the Microsoft Intune Admin Center using an account with Intune Administrator permissions.



In Intune, navigate to Devices → Configuration → Create → New Policy.



For Platform, select Windows 10 and later. For Profile type, select Settings Catalog and click Create.



Name the profile ACME-Display-Timeout-Policy and continue to the Configuration settings page.



Click + Add settings and search for Power Management or Display settings.



Under System → Power Management → Video and Display Settings, configure "When plugged in, turn display off after (seconds)" and set the value to 900 seconds.



Review the setting and confirm that the display timeout value shows 900 seconds (15 minutes).



Go to the Assignments tab and select the ACME-Intune-Pilot group as the target group for the profile.



Continue through Review + Create and click Create to publish the profile.



After the profile is assigned, navigate to Devices → All devices → select the target device → Device configuration.



Locate ACME-Display-Timeout-Policy in the configuration profile list and review the deployment status.



Verify the profile status shows Succeeded. A successful status confirms that the policy was delivered and applied to the target device.



##### Expected Result

The ACME-Display-Timeout-Policy is assigned to the ACME-Intune-Pilot group, the display timeout value is configured to 900 seconds, and the device configuration report shows a status of Succeeded.

