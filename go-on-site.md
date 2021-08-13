# Before going onsite

## Incident notification

* Is the incident report registered in the ticketing system?
* Is the incident report complete or do you require additional information?
* What is the ticket number?
* What is the initial incident classification?


## Incident information

* **When** did the problem start?
* **How** was the incident detected? 
* * Is there a specific alert or observation?
* What is the quality of the **source**?
* * Is it reliable?
* What is the **severity** and **impact** of the incident?
* * Is the incident ongoing?
* * Is PII at risk? 
* * Is it a criminal act?
* * Is safety at risk?


## Communication

* Define out-of-band communication channel
* * Signal
* **Incident case name**
* * Inform victim of case name
* What's the frequency of providing updates?
* * Daily, at 6PM
* * PGP-keys?
* Does victim understand concept of TLP?


## Victim identification

* Name of the company
* Office location
* Your **point of contact**
* Sector 
* Is it CIIP?


## Legal

* Legal contact
* Who contacts LE?


## Threat package victim
* List known threat actors for the sector
* List known tools of these threat actrs
* Summary of previous incidents of this victim
* Summary of previous incidents in this sector
* Export Shodan informaton on public IP space and domain names
* Search VT for victim name
* Certificate transparancy list for victim name

## Checklist
* MITRE
* * JSON with threat actors sector
* * Navigator layers
* *  * Threat actors
* *  * Tools
* * Techniques
* * Data sources
* MISP
* * Clean MISP
* * Import from PROD , use galaxy as filter
* * Import from PROD , use sector as filter
* TheHive
* * Clean TheHive
* GIT
* * Git init with case name
* * Copy forensic scripts
* Hardware
* * Verify USB drives are erased (certificate)
* Pi-CSIRT
* * Verify Raspberry-Pi boots
* * Copy of SD-card
 
