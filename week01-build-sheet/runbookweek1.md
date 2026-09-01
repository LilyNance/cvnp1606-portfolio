# Baseline Build Runbook – Windows 11 VM

## 1. Executive Summary

This runbook documents the process for creating a standardized Windows 11 virtual machine baseline. A known-good baseline allows IT staff to deploy consistent, secure, and reliable systems while reducing troubleshooting time and configuration drift.

The completed baseline serves as the approved reference image for future testing, training, and deployment activities. Maintaining this baseline ensures all systems begin from a verified configuration.

---

## 2. Prerequisites

### Software Requirements
- Approved Windows 11 ISO (Enterprise, Education, or Pro edition as required by organizational policy)
- Hypervisor software:
  - Hyper-V
  - VMware Workstation
  - Oracle VirtualBox
- Administrative privileges on the host system

### Recommended VM Hardware Settings
- CPU: 2+ virtual processors
- Memory: 8 GB RAM minimum
- Storage: 80 GB virtual disk minimum
- Network Adapter: NAT or Bridged networking
- TPM 2.0 enabled (if required by hypervisor)
- Secure Boot enabled

### Required Information
- Computer name
- Local administrator credentials
- Organization-specific configuration requirements
- Internet connectivity for updates

---

## 3. Procedure

### Step 1 – Create the Virtual Machine
1. Open the hypervisor management console.
2. Create a new virtual machine.
3. Assign the approved VM hardware settings.
4. Attach the approved Windows 11 ISO.
5. Enable TPM and Secure Boot if required.
6. Save the VM configuration.

### Step 2 – Install Windows 11
1. Start the VM and boot from the ISO.
2. Select language, time, and keyboard settings.
3. Click **Install Now**.
4. Enter a product key if required or select **I don't have a product key**.
5. Choose the approved Windows 11 edition.
6. Accept the license agreement.
7. Select **Custom Installation**.
8. Install Windows on the virtual disk.
9. Complete the Out-of-Box Experience (OOBE).

### Step 3 – Configure Basic Settings
1. Create the local administrator account.
2. Rename the computer according to naming standards.
3. Verify date, time, and time zone settings.
4. Configure network connectivity.
5. Disable unnecessary startup applications if applicable.

### Step 4 – Install Updates
1. Open **Settings → Windows Update**.
2. Select **Check for Updates**.
3. Install all available quality and security updates.
4. Restart when prompted.
5. Repeat the update process until no additional updates are available.

### Step 5 – Install Required Software
1. Install hypervisor guest tools (VMware Tools, VirtualBox Guest Additions, or Hyper-V Integration Services).
2. Install approved organizational software as required.
3. Verify all installations complete successfully.

### Step 6 – Collect Baseline Information
1. Record:
   - Computer Name
   - Windows Edition
   - Windows Version
   - OS Build Number
   - Assigned RAM
   - Virtual Disk Size
   - Network Configuration
2. Save the inventory information in project documentation.

### Step 7 – Create Baseline Snapshot
1. Shut down the VM or ensure it is in a stable state.
2. Create a hypervisor snapshot/checkpoint named:

   `W01_CleanBaseline`

3. Add a description indicating that all updates and baseline configuration tasks have been completed.

---

## 4. Verification

Verify the baseline meets the following requirements:

### Inventory Verification
- Computer name is documented.
- Windows edition is documented.
- Windows version and build number are documented.
- VM hardware specifications are documented.

### Update Verification
- Windows Update reports **You're up to date**.
- No pending restart notifications exist.
- Security and cumulative updates are installed successfully.

### Snapshot Verification
- Snapshot/checkpoint named `W01_CleanBaseline` exists.
- Snapshot description identifies it as the approved baseline.
- Snapshot can be viewed within the hypervisor management console.

### Functional Verification
- VM boots successfully.
- User can log in using the administrator account.
- Network connectivity is operational.
- Installed software launches without errors.

---

## 5. Rollback Procedure

If a future configuration change, software installation, or update causes instability, revert the VM to the approved baseline snapshot.

1. Shut down the virtual machine.
2. Open the hypervisor management console.
3. Locate the snapshot/checkpoint named:

   `W01_CleanBaseline`

4. Select **Revert**, **Restore**, or the equivalent action for the hypervisor.
5. Confirm the restoration operation.
6. Power on the VM.
7. Verify the system boots successfully and matches the documented baseline configuration.

**Note:** Reverting to the baseline snapshot removes all changes made after the snapshot was created. Ensure any required data is backed up before performing the rollback.
