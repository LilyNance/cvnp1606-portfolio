# Escalation Note



## Ticket Information



- Ticket ID: CVNP1606-W06-006

- User: Emily Park

- Device: ACME-EMILY-REMOTE

- Issue: Unable to access ACME intranet and shared drives



## Actions Completed by Tier 1 Support



The following troubleshooting steps were completed as part of Tier 1 support:



1\. Collected network information using:

&#x20;  - ipconfig /all

&#x20;  - ping

&#x20;  - nslookup

&#x20;  - Test-NetConnection



2\. Confirmed the computer had a valid IP address and default gateway.



3\. Confirmed the computer could reach the internet by successfully pinging 8.8.8.8.



4\. Identified a DNS issue when name resolution failed during the nslookup test.



5\. Reviewed the network adapter settings and found an incorrect DNS server configured.



6\. Restored the DNS settings and verified the issue was isolated to the DNS layer.



\## Issues That Require Escalation



\### VPN or Remote Access Problems



Contact: Network Operations Team



Provide:

- Ticket ID

- User name

- Computer name

- Time the issue occurred

- Diagnostic results

- Screenshots and evidence files



Reason:



VPN servers and remote access systems are managed by the Network Operations Team. Tier 1 technicians do not make changes to VPN infrastructure.



\### Firewall or Security Policy Issues



Contact: Network Security Team



Provide:

- Ticket ID

- Computer name

- IP address

- Diagnostic results

- Screenshots and evidence files



Reason:



Firewall rules and security policies are managed by the Network Security Team. Tier 1 technicians are not authorized to change security settings.



## Handoff Summary



Troubleshooting showed that the issue was caused by an incorrect DNS server configuration. The device had a valid IP address, a working gateway connection, and internet connectivity. The failure occurred during DNS resolution, which prevented ACME resources from being located. If the issue returns after correcting the DNS settings, the ticket should be escalated with the collected evidence attached.

