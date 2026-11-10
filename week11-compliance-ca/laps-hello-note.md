# Windows Hello for Business and Windows LAPS



### Section A - Windows Hello for Business

Windows Hello for Business is designed to replace traditional passwords with a more secure way of signing in. Instead of typing a password every time, users can sign in with a PIN, fingerprint, or facial recognition, depending on the hardware available on the device.



What makes Windows Hello for Business different from a regular password is that it uses a cryptographic key that is tied to a specific device. The private key is stored on the device and does not leave it. This means that even if someone knows a user's PIN, they cannot use it from another computer because the authentication key is not there.



Windows Hello for Business improves security by reducing the risks that come with stolen, weak, or reused passwords. It also makes sign-in faster and more convenient for users while helping protect company accounts and data.



### Section B - Windows LAPS

Windows LAPS (Local Administrator Password Solution) helps solve the problem of shared local administrator passwords. In many environments, multiple computers may use the same local admin password. If that password is discovered or stolen, an attacker could potentially gain access to other systems that use the same credentials.



Windows LAPS automatically creates a unique password for each device and stores it in Microsoft Entra ID or Active Directory. The password rotates on a schedule, such as every 30 days, and administrators can also force a password change when needed. Authorized technicians can retrieve the current password when maintenance or troubleshooting is required.



This is especially important for ACME's cashier kiosk machines. Technicians may need local administrator access to perform updates, repairs, or maintenance. With LAPS, each kiosk has its own unique password that changes regularly. If one kiosk is compromised, the password from that system cannot be used to access other kiosks, reducing the overall security risk for the organization.

