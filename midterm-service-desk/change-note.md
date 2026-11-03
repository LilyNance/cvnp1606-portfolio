\# Change Note - Ticket C Driver Failure



\## Observation



When I checked Device Manager, the audio device had a warning icon next to it. The device showed Code 28, which means the driver was not installed. The device was listed under Other devices as "Audio Device on High Definition Audio Bus."



\## Change



I opened Device Manager and selected Update Driver. I used the Search automatically for drivers option, and Windows successfully found and installed the driver for the audio device.



\## Approval



Approved by: Lily Nance (Student Technician)



\## Result



After the driver was installed, the device moved to the Sound, video and game controllers section in Device Manager. The warning icon was gone, and the device status showed that it was working properly.



\## Rollback Plan



If the new driver caused problems, I would go back into Device Manager and use Roll Back Driver if it was available. If a rollback was not available, I would uninstall the device and reinstall the previous driver.



\## Verification



I verified the fix by reopening Device Manager and checking the device status. The High Definition Audio Device no longer showed an error and reported that the device was working properly.

