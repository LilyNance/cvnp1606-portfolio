# Week 6 Network Root Cause Analysis



## Scenario



Emily Park, a remote employee at ACME, reported that she could not access the ACME intranet or shared drives. She said some websites were still loading, but she could not reach company resources. My goal was to troubleshoot the issue, identify the fault layer, collect evidence, and provide easy-to-follow instructions for the user.



## Fault Simulated



I simulated a DNS issue by changing the DNS server to an incorrect address. This caused name resolution to fail while the computer could still communicate with devices using IP addresses.



## Tools Used



- ipconfig /all

- ping

- nslookup

- Test-NetConnection

- PowerShell

- Network Adapter Settings



## Root Cause



The fault layer was DNS. I changed the DNS server to an invalid address, which prevented the computer from resolving hostnames. The evidence showed that `ping 8.8.8.8` was successful, proving internet connectivity was working, but `nslookup acme.internal` failed because DNS requests could not be completed. This confirmed that the issue was caused by DNS and not IP addressing or routing.



## Evidence Collected



- Screenshot 1: ipconfig /all output

- Screenshot 2: Ping and nslookup tests

- Screenshot 3: Test-NetConnection results

- Screenshot 4: connectivity-evidence.txt verification

- Screenshot 5: Simulated DNS fault

- Screenshot 6: Evidence file with incorrect DNS settings

- Screenshot 7: DNS timeout and failure results

- connectivity-evidence.txt



## Troubleshooting Narrative



### 1. What fault did you simulate and what symptom did it produce?



I simulated a DNS fault by changing the DNS server to an incorrect address. This caused hostname lookups to fail and made it impossible to reach ACME resources that relied on DNS.



### 2. Which diagnostic command gave you the first clear signal of the fault layer?



The `nslookup` command provided the first clear indication of the problem. It failed to resolve the hostname, which pointed to a DNS issue.



### 3. What did you try first to resolve it?



I checked the network adapter settings and reviewed the DNS server configuration. This helped me identify that the DNS server address had been changed to an invalid value.



### 4. What confirmed the fix worked?



After restoring the network adapter to obtain DNS settings automatically, the network configuration returned to normal. The DNS server was once again assigned automatically and the incorrect setting was removed.



### 5. How did you verify the result after the fix?



I ran `ipconfig /all` and confirmed that the DNS server had returned to the correct address provided by DHCP. This confirmed that the adapter settings had been restored successfully.



### 6. What was the business impact of leaving this issue unresolved?



If the issue was not fixed, Emily would be unable to access company resources, shared drives, and internal websites. This would prevent her from completing normal work tasks and reduce productivity.



## Escalation Summary



As a Tier 1 technician, I can collect diagnostic information, test connectivity, review adapter settings, and correct local DNS configuration issues. Problems involving VPN infrastructure, firewall policies, network servers, or company-wide outages should be escalated to the appropriate network or security team.

