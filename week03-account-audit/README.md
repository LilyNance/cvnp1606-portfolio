# Week 03 Account Audit

**Student:** Lily Nance

## Lab Objective

The purpose of this lab was to create a standard user account, test User Account Control (UAC) elevation behavior, audit local user and group membership using PowerShell, and apply the principle of least privilege.

## Create a Standard User Account

I used **Method B (Local Users and Groups - lusrmgr.msc)** to create a standard user account. I selected this method because it is commonly used in enterprise environments, does not require a Microsoft account, and allows administrators to manage local accounts directly through the Local Users and Groups console.

**Account Created:** seasonal-staff

The account was verified as a member of the Users group and not the Administrators group. After creating the account, I reviewed the Member Of tab to confirm that it belonged to the Users group and did not have administrative privileges.

### Evidence

- Screenshot of seasonal-staff in Local Users and Groups.
- Screenshot showing group membership.

---

## Step 2: Test UAC Elevation Behavior

After creating the seasonal-staff standard user account, I signed out of the administrator account and signed in using the new standard user account. To test User Account Control (UAC), I attempted to access tools and settings that require elevated permissions.

When I attempted to perform an administrative action, Windows displayed a User Account Control prompt requesting administrator credentials. Because the account was configured as a standard user, it did not have permission to complete the action without approval from an administrator.

This test demonstrated how UAC helps protect Windows systems by preventing standard users from making system-level changes without authorization. It also showed how organizations can allow users to perform daily tasks while restricting access to administrative functions.

### Evidence

- Screenshot of the UAC credential prompt while signed in as seasonal-staff.

---

## Step 3: Audit Local Group Membership

I used PowerShell to review local users and administrator group membership.

### Commands Used

```powershell
Get-LocalUser

Get-LocalGroupMember -Group "Administrators"