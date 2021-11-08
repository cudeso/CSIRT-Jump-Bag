# Prepare
* Conduct awareness campaigns
* Incident response training, forensic acquisition training
* Have asset identification
* Prepare the incident response jump bag
* Make the environment forensic ready
* - Sufficient logging and log retention
* - - According to best practices (for example Malware Archeology Windows logging and Windows advanced logging cheat sheets - https://www.malwarearchaeology.com/cheat-sheets )
* - - Enable Sysmon
* - - Log retention for longer period than the default system retention setting
* - Have system auditing enabled
* - Collect the system logs on a central location
* - Have network telemetry
* - - Netflow between different segments
* - - Netflow within a segment


## Detect 
* Signs of a security incident
* - Human observation of a security incident
* - Threat alert from national CSIRT, ISACs or law enforcement
* - Vendor alert
* - Alert from a security control?
* - - Anti-virus alerts
* - - Firewall alert
* - - Windows security alerts
* - - IDS or DLP alert
* Identify threat indicators
* - Unusual system, user, application, disk or network activity?
* - - New program execution
* - - Applications started from a temporary location
* - - Installation of new applications or services
* - - Sudden application crashes or system restarts
* - - Unexplained system performance issues
* - - Pop-up windows
* - - Browser or e-mail plugins installed
* - - Unusual logins
* - - User access to systems outside normal business hours
* - - Unexplained new user accounts
* - - Locked user accounts
* - - Unexplained use of disabled or dormant user accounts
* - - Accounts with non-standard usernames
* - - Access to a system with unusual port, protocol or software
* - - Unusual files or directories
* - - Unexplained encrypted files
* - - Unusual registry entries
* - - New startup applications
* - - New scheduled tasks
* - - Network activity to new  locations
* - - Activity different from baseline?
* - System environment conditions
* - - Known system patches missing?
* - - Recent configuration change?
* - - Recent vendor intervention?
* - Identify risk factors (VI.6.1. Phase 1/a)
* - - Define functional impact
* - - Risk for safety?
* - - Risk for PII?
* - - Risk of spreading to other environments?
* - - Are customers affected
* - - Define information impact
* - - Risk for confidential information?
* - - Possible level of access obtained by attacker
* Triage and register
* - Create, classify and categorise incident
* - Name the incident
* - - Create a simple two-word phrase to refer to the incident—a codename—to use for the incident file and channel(s).
* - Document initial assessment on complexity of the incident
* - Define severity based on threat and risk factors
* Use severity and risk factor as input for escalation
* Is there a need for notification?
* - Inform management, legal or authorities?
* - Inform CISO?
* - Assemble the incident response team
* Communication
* - Appoint incident lead
* - Appoint a communication contact
* - Define the communication channels
* - - Do not use internal e-mail to share details
		
# Analyze
* Document the incident
* - Date and time of detection
* - Create timeline of actions
* - - When
* - - What
* - - Where
* - - How
* - - Impact
* Preserve evidence and secure artefacts 
* - Photo's of screen of the device
* - Screenshots of the desktop
* - Do not alter the evidences
* - - No system restart
* - - No system shutdown
* - - Do not run security software
* - - Do not run anti-virus scan
* - - Do not run a vulnerability scan
* - - Do not run stop/restart services
* - - Do not run stop/restart applications
* - - Do not run change network configuration
* - - Do not run change firewall or routing
* - - Do not run add/remove users
* Guarantee chain of custody
* - Document and label everything
* Start forensic investigation
* - Collect and safeguard logs
* - Collect and safeguard memory images
* - Collect and safeguard disk images
* - Collect and safeguard network captures
* - Collect and safeguard malware samples
* - Live forensics
* - - Users, groups and memberships
* - - Currently logged in users
* - - Local and domain users
* - - IP addresses involved
* - - Domain names involved
* - - Network ports and protocols
* - - Listening network ports and associated services
* - - Domain Name System (DNS) Resolution Settings and Static Routes
* - - Established and Recent Network Connections 
* - - Traffic volume
* - - DNS cache
* - - ARP cache
* - - Process and services list
* - - Open files
* - - Installed applications
* - - Scheduled tasks
* - - Startup items
* - - Run Key and other AutoRun Persistence
* - - Scheduled tasks and cron jobs
* - - Artifacts of past execution (e.g., Prefetch and Shimcache)
* - - Event logs
* - - Group policy and WMI artifacts
* - - Anti-virus detections
* - - Binaries in temporary storage locations
* - - Remote access activity including Remote Desktop Protocol (RDP), virtual private network (VPN), SSH, virtual network computing (VNC), and other remote access tools
* Complete incident details
* - Name of the malware
* - Network connections linked to malware?
* Find initial access vector
* Identify possible lateral movements
* Identify changes done by attacker
* - Exfiltration
* - Persistence
* - Additional remote access
* Artefact analysis
* - Done via internal analysis or third party?
* - Via public sources?
* - Analyze network captures
* - Analyse logs
* - Extract indicators
* Create indicators
* - Network based indicators
* - Host based indicators
* - Compromised accounts
* - Expected follow-up activity (block, log)
* Identify the assets affected (VI.6.1. Phase 1/a)
* - Systems
* - Users
* - Components (PLCs, ...)
* - Networks

# Contain
* Define the initial containment actions
* Identify available backups
* Consider possible fallback or isolation options
* Deploy indicators of compromise
* - Expected action block/log
* Vulnerability analysis
* - Used as input for eradication and further containment
* - Can it be solved with a patch? Is there a vendor patch?
* - Mitigative actions available?
* Contain affected users
* - Disable account
* - Filter access to the account
* - Enable multi-factor authentication
* - Disable remote access
* Contain affected systems
* - Disconnect from network (cable or disable Wifi)
* - Disconnect storage devices
* - Do not shutdown
* Conain affected networks
* - Isolate systems
* - Document and block traffic filters
* Sharing of incident details
* - Share binaries with national CSIRT / security vendor, ISACs
* - Share with sector
* - Share technical and non technical information
* Monitor for new infections
* Scan other systems for indicators
* - Understand the scope and how widespread the incident is
* - Do not limit to immediate adjecent systems / networks
* Scan logs for indicators
* - Retroactive
* - Find historical traces
* - How long was the intrusion ongoing?
* Complete the documentation
* - Build the documentation during containment, not afterwards
* - Communicate to incident response team
* Do necessary reporting and notification

# Eradicate
* Reset credentials
* Remove the malware (and/or binaries)
* Patch operating systems
* Patch application
* Check AD configuration
* - Check integrity
* - Use AD security verification tools (Pingcastle) to get an quick overview
* - - Find unidentified paths to AD-administrator
* - - Bloodhound
* Clean user profiles
* Update IDS/IPS signatures
* Update endpoint protection/EDR/anti-virus signatures
* Complete normal eradication process
* Set network collectors to capture traffic
* Increase system and environment monitoring 
* Do necessary reporting and notification
* - Inform stakeholders that eradication is taking place

# Recover
* Boot from clean media and cleanup
* Reinstall systems
* Restore systems to normal operation
* Verify that mitigations were effective and threat is removed
* Scan systems with updated signatures
* Scan file shares with updated signatures
* Complete remaining restore and verification procedure
* Do necessary reporting and notification
* -	Inform stakeholders that recovery is taking place

# Lessons learned
* Complete the incident report and management summary
* Complete the timeline
* Compile the lessons learned
* Suggest configuration changes
* Provide policy changes
* Review the incident response workflow
* Compile the summary of recommendations

