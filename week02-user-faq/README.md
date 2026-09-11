# CVNP1606 - Week 2

## Student Information

**Name:** Lily Nance  
**Course:** CVNP1606  
**Week:** 2  
**Date:** September 11, 2026

---

## Overview

This repository contains the Week 2 support documentation assignment for CVNP1606. The objective was to troubleshoot common Windows 11 user issues following a Windows 11 refresh, create user-facing FAQ articles, document troubleshooting steps, identify root causes, and produce professional support notes suitable for a help desk environment.

---

## Ticket Information

**Ticket ID:** CVNP1606-W02-002  
**Submitted By:** Jordan Lee, Nexus Support Services Lead Technician  
**Affected Users:** ACME Pilot Group after Windows 11 Refresh

### Business Impact

Support volume increased because users needed assistance locating Windows 11 settings, accessibility features, account management options, installed applications, and system troubleshooting tools.

---

## Project Objective

Create verified Windows 11 FAQ entries and professional support documentation that help users resolve common issues without requiring direct technician assistance.

---

## FAQ 1: How do I make my mouse pointer larger in Windows 11?

### User Goal

Make the mouse pointer easier to see and use.

### Tool Path Tested

Settings > Accessibility > Mouse pointer and touch

### Steps

1. Open **Settings**.
2. Select **Accessibility**.
3. Select **Mouse pointer and touch**.
4. Move the **Size** slider to increase pointer size.
5. Verify the new pointer size is applied.

### Evidence

- screenshots/mouse-pointer-path.png

### When to Escalate

Escalate if the pointer size does not change or the Accessibility settings cannot be accessed.

---

## FAQ 2: How do I enable a color filter for red-green color blindness (Protanopia)?

### User Goal

Improve color visibility for red-green color blindness.

### Tool Path Tested

Settings > Accessibility > Color filters

### Steps

1. Open **Settings**.
2. Select **Accessibility**.
3. Select **Color filters**.
4. Turn **Color Filters** on.
5. Select **Red-green (red weak, protanopia)**.

### Evidence

- screenshots/color-filters-protanopia-enabled.png

### When to Escalate

Escalate if color filters fail to apply or settings do not save.

---

## FAQ 3: How do I uninstall Xbox Live in Windows 11?

### User Goal

Remove Xbox Live from the computer.

### Tool Path Tested

Settings > Apps > Installed apps

### Steps

1. Open **Settings**.
2. Select **Apps**.
3. Select **Installed apps**.
4. Locate **Xbox Live**.
5. Select **Uninstall**.
6. Follow any prompts to complete removal.

### Evidence

- screenshots/xbox-live-installed-apps.png

### When to Escalate

Escalate if the uninstall option is unavailable or administrative permissions are required.

---

## FAQ 4: How do I change my Windows Hello PIN?

### User Goal

Change the Windows Hello PIN used to sign in to Windows 11.

### Tool Path Tested

Settings > Accounts > Sign-in options > PIN (Windows Hello) > Change PIN

### Steps

1. Open **Settings**.
2. Select **Accounts**.
3. Select **Sign-in options**.
4. Expand **PIN (Windows Hello)**.
5. Select **Change PIN**.
6. Enter the current PIN.
7. Enter and confirm the new PIN.
8. Select **OK**.

### Evidence

- screenshots/windows-hello-pin-path.png

### When to Escalate

Escalate if Windows Hello is unavailable, identity verification fails, or an error appears during PIN changes.

---

## FAQ 5: How do I find an error log from a system crash?

### User Goal

Locate and review Windows crash logs for troubleshooting purposes.

### Tool Path Tested

Start Menu > Search Event Viewer > Windows Logs > System

### Steps

1. Open the **Start Menu**.
2. Type **Event Viewer**.
3. Open **Event Viewer**.
4. Expand **Windows Logs**.
5. Select **System**.
6. Click **Filter Current Log**.
7. Select the desired date range.
8. Choose **Critical** and **Error** event levels.
9. Select **OK**.
10. Review the log entries.
11. Open event details as needed.
12. Save screenshots or export logs if requested.

### Evidence

- screenshots/event-viewer-search.png
- screenshots/event-viewer-system-filter.png

### When to Escalate

Escalate if no crash events are found, Event Viewer cannot be opened, or the system continues to experience crashes.

---

## Troubleshooting Summary

### Tools Used

- Windows Settings
- Accessibility Settings
- Installed Apps
- Sign-in Options
- Event Viewer
- Windows Logs
- System Event Log

### Actions Performed

1. Verified accessibility feature locations.
2. Enabled color filters.
3. Removed Xbox Live through Installed Apps.
4. Changed a Windows Hello PIN.
5. Opened Event Viewer.
6. Filtered System logs for Critical and Error events.
7. Verified event log access.
8. Confirmed all procedures were successful.

---

## Support Notes Summary

### Mouse Pointer

**Root Cause:** User required accessibility adjustments.  
**Resolution:** Increased mouse pointer size.  
**Verification:** Pointer size changed successfully and visibility improved.

### Color Filters

**Root Cause:** Accessibility settings were not configured.  
**Resolution:** Enabled Protanopia color filter.  
**Verification:** Color filter successfully applied.

### Xbox Live

**Root Cause:** User was unfamiliar with the Installed Apps interface.  
**Resolution:** Uninstalled Xbox Live through Settings.  
**Verification:** Application removed successfully.

### Windows Hello PIN

**Root Cause:** User was unfamiliar with Windows 11 sign-in settings after the refresh.  
**Resolution:** Updated the Windows Hello PIN.  
**Verification:** User successfully signed in with the new PIN.

### Event Viewer

**Root Cause:** User was unfamiliar with Event Viewer navigation and log filtering options.  
**Resolution:** Guided the user through accessing and filtering System logs.  
**Verification:** Relevant crash logs were successfully located.

---

## Learning Outcomes

This assignment provided experience with:

- Windows 11 troubleshooting
- Accessibility configuration
- User account management
- Application management
- Event Viewer navigation
- Log analysis
- FAQ creation
- Support documentation
- Help desk ticket documentation
- Technical communication

---

## Outcome

All five issues were successfully documented and resolved using built-in Windows 11 tools. User-facing FAQs, screenshot evidence, escalation guidance, troubleshooting documentation, and professional support notes were created to reduce future support requests and improve user self-service capabilities.

---

## Author

**Lily Nance**  
CVNP1606 - Week 2