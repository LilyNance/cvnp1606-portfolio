# CVNP 1606 Week 7 - Devices, Drivers, and Peripherals



## Scenario Summary



In this lab, I used Device Manager and PowerShell to investigate a device issue, collect hardware information, review driver details, and restore the device to a working state. I also documented the change and created a rollback plan in case the fix needed to be reversed in the future.



## Tools Used



- Device Manager

- PowerShell

- Get-PnpDevice

- Hardware Inventory Documentation

- Change Note Documentation

- Rollback Planning



## Evidence Included



- hardware-inventory.txt

- change-note.md

- rollback-plan.md

- evidence-report.txt

- Device Manager screenshots

- PowerShell screenshots



## Troubleshooting Narrative



### 1. What went wrong, or what could realistically have gone wrong?



The Intel(R) 82574L Gigabit Network Connection was disabled and displayed Code 22 in Device Manager. In a real workplace, a device could stop working because it was accidentally disabled, a driver update caused a problem, or the driver became corrupted after a system change.



### 2. What evidence did you check first?



I first checked Device Manager to identify the device and see the error message. After that, I used PowerShell and the Get-PnpDevice command to find devices that were not reporting an OK status. I also reviewed the device properties to collect the Hardware ID, driver information, and device status.



### 3. What did you try?



Before making any changes, I collected all of the required evidence and documented the device's condition. I reviewed the Driver tab and confirmed that the Roll Back Driver option was unavailable. After reviewing the information, I determined that the device had been disabled and used the Enable Device option to restore it.



### 4. What fixed it, or what would you try next?



Enabling the network adapter fixed the problem and restored the device to a working state. If that had not worked, my next step would have been to uninstall and reinstall the device, scan for hardware changes, and continue troubleshooting possible driver issues.



### 5. How did you verify the result?



After making the change, I reopened the device properties in Device Manager and confirmed that the status reported "This device is working properly." I also verified that the Code 22 error was no longer present.



### 6. What was the support or security impact of the issue or fix?



A disabled network adapter can prevent a computer from connecting to network resources, shared files, printers, cloud services, and the internet. Restoring the device helped return normal network functionality and reduced the risk of work interruptions. Documenting the change and rollback process also makes it easier for another technician to support the device in the future.

