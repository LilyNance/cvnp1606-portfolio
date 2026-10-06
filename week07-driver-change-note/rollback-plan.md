# Rollback Plan



## Ticket Information



Ticket ID: CVNP1606-W07-007



Technician: Lily Nance



Date: October 5, 2026



## What Was Changed



The Intel(R) 82574L Gigabit Network Connection was restored by enabling the device in Device Manager. Before the change, the network adapter was disabled and displaying Code 22.



## Restore Target State



If the change causes new problems, the device should be returned to its previous state.



Previous Status: Code 22 - Device Disabled



Driver Provider: Microsoft



Driver Date: 8/3/2015



Driver Version: 12.19.1.32



## Who Is Responsible



The assigned desktop support technician is responsible for performing the rollback.



The following people should be notified if a rollback is required:



- Lead Technician

- Alex Torres, Office Manager



## Rollback Steps



1. Open Device Manager.

2. Expand the Network Adapters category.

3. Locate Intel(R) 82574L Gigabit Network Connection.

4. Right-click the device.

5. Select Disable Device.

6. Confirm the action when prompted.

7. Close Device Manager.



## How To Verify The Rollback



After completing the rollback:



1. Open the device Properties window.

2. Select the General tab.

3. Confirm the device status shows:



&#x20;  "This device is disabled. (Code 22)"



4. Verify the device matches the original state that was documented before the change.



## Escalation Path



If the rollback does not return the device to its previous state, or if new issues are discovered, escalate the ticket to the Lead Technician for further troubleshooting.



Additional troubleshooting may include driver reinstallation, driver updates, or advanced hardware diagnostics.

