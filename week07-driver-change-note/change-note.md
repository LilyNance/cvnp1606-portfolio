# Change Note



## Ticket Information



Ticket ID: CVNP1606-W07-007



Technician: Lily Nance



Date: October 5, 2026



## Before State



During the initial investigation, the Intel(R) 82574L Gigabit Network Connection was showing an error in Device Manager. The device status reported Code 22, indicating that the network adapter was disabled and unavailable for use.



Driver Provider: Microsoft



Driver Date: 8/3/2015



Driver Version: 12.19.1.32



Roll Back Driver Status: Unavailable (greyed out)



The Hardware ID and driver information were collected and recorded in hardware-inventory.txt before any changes were made. PowerShell was also used to identify devices that were not in an OK state.



## Action Taken



I opened Device Manager, reviewed the device properties, and confirmed that the network adapter was disabled. I then selected Enable Device to restore the network adapter to an operational state.



After enabling the device, I reopened the device properties and verified that the adapter was recognized correctly by Windows.



## Reason For Decision



I first evaluated the available remediation options. The Roll Back Driver button was unavailable, which meant there was no previous driver version stored on the system. Although uninstalling and reinstalling the device was an available option, the collected evidence showed that the driver itself was not damaged or missing.



Because the issue was caused by the device being disabled rather than a driver failure, enabling the device was the safest and lowest-risk solution. This approach restored functionality without making unnecessary changes to the installed driver.



## Expected After State



The network adapter should no longer display a Code 22 error in Device Manager. The device should return to a normal operating state and Windows should report that the device is working properly.



The adapter should also no longer appear as a problem device when reviewed through Device Manager or PowerShell.



## Result



The remediation was successful. After enabling the device, Device Manager reported that "This device is working properly." The Code 22 error was no longer present and the network adapter returned to a healthy status.



The device was successfully restored without requiring a driver rollback, driver reinstall, or escalation.

