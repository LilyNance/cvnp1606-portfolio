# Profile Evidence

The configuration profile I reviewed was ACME-Display-Timeout-Policy. This profile enforces a display timeout of 900 seconds (15 minutes) when a device is plugged in. The business need for this setting is to help improve security by reducing the amount of time a device remains unattended and unlocked. This helps protect company data and encourages consistent security settings across managed devices.



The profile was assigned to the ACME-Intune-Pilot group. This scope is appropriate because it allows IT staff to test the configuration on a smaller group of devices before rolling it out to a larger production environment. Using a pilot group helps identify potential issues before a wider deployment.



To verify the profile applied successfully, I reviewed the Device configuration status in Intune for the target device. The profile status showed Succeeded, confirming that the policy was delivered and applied correctly.



If this profile was missing or misconfigured, devices could remain active longer than intended, increasing the risk of unauthorized access. It could also lead to inconsistent settings across devices and create additional troubleshooting and support work for technicians.

