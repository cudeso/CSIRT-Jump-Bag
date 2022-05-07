# CSIRT-Jump-Bag

A CSIRT Jump Bag is an organised kit with all the basics that are needed to respond to a security incident and collect forensic evidences.

Review this checklist [before going on site](go-on-site.md)


## First Responder tools
* Ubuntu Live CD (Linux)
* Ubuntu Live from USB (Linux)
* Hiren's BootCD (Windows)
* KillDisk

## Documents
* Chain of custody document
* Forensic imaging guidelines
* IR playbook
* Business cards
* [SANS Cheat Sheets(https://www.sans.org/blog/the-ultimate-list-of-sans-cheat-sheets/)

## Hardware
* Put stickers on your hardware. That way you can easily recognize them from the already present gear.
* Drives
* * External SSD hard drives (USB)
* * Drive connectors
* * Write blockers and/or ComboDock (such as [Forensic ComboDock, model FCDv5.5](https://wiebetech.com/products/forensic-combodock-v5-5/)
* * NAS
* Imaging
* * [TableauForensicImager](https://security.opentext.com/tableau/hardware/details/tx1)
* * [guymager](https://guymager.sourceforge.io/)
* Cables
* * RJ45 cables
* * Power cables
* * Power extension cable
* * Serial to USB cable
* Devices
* * Camera
* * USB hub
* * Digital clock
* * Network hub
* * Power multi-socket
* Network taps
* * [Dualcomm](https://www.dualcomm.com/collections/featured-products/products/dual-speed-sfp-network-tap) network taps
* * SFP modules (Multimode / Single-mode)
* Gear
* * Anti-static bags
* * Tape
* * Screwdriver
* * SIM ejector
* Note taking
* * Labels
* * Pencils
* * Notebook
* * Flashlight
* Network taps
* * Network hub
* * RS232 and RS485 taps

## Software
* LiME
* [Sysinternals](https://docs.microsoft.com/en-us/sysinternals/downloads/sysinternals-suite)
* [Winpmem](https://github.com/Velocidex/c-aff4/releases)
* FTK Imager
* [Nirsoft tools](https://www.nirsoft.net/utils/index.html)
* tcpdump
* [Wireshark](https://www.wireshark.org/download.html)
* portmon
* dumpit
* memoryze
* [Mandiant Redline](https://www.fireeye.com/services/freeware/redline.html)
* [Volatility](https://github.com/volatilityfoundation/volatility)
* [MemProcFS](https://github.com/ufrisk/MemProcFS)
* BulkExtractor
* [SuperMem](https://github.com/CrowdStrike/SuperMem)
* [srum-dump](https://github.com/MarkBaggett/srum-dump)

## Pi-CSIRT
* Raspberry Pi
* tcpdump
* nfdump
* dd
* nc
* Power adapter
* RJ-45
* RJ-45 to USB

## Incident Response Laptop

* Hardware
* * Processor: Intel Core i7 or i9, with at least six cores
* * Memory: 64GB DDR4
* * Harddrive: M2 NVME SSD (for speed) with 1TB storage
* * Harddrive doesn't need to be RAID
* * * Backup the CLEAN state of the virtual machine
* * Minimum 2x USB3.1 and 1x USB-C
* * Screen size doesn't really matter, you can use an external screen
* Host operating system doesn't really matter.
* * None of the IR work is done on the host operating system
* The laptop cannot be installed from a corporate image
* The laptop cannot be domain-joined
* Access to the laptop must be protected with a username/password
* Full disk encryption is highly advised
* Three partitions
* * **System** partition, with the host operating system
* * **Data** partition, with the virtual machines
* * **Evidence** partition, used to transfer evidences from USB or other sources
* * * This partition is always wiped when an investigation is finished

* Virtualisation software
* * VMWare (Workstation / Fusion)
* * After the installation of the virtual machines, always create a "CLEAN" snapshot (label it correctly). 
* One dedicated external harddrive to backup the "CLEAN" state of the virtual machines 

## Checklist Incident Response laptop after incident investigation
* Safeguard evidences (USB, locker)
* Update chain-of-custody documentation
* Wipe evidence partition
* Reset virtual machines to CLEAN state

## Virtual machines
On IR-laptop
* SIFT workstation
* FLARE workstation
* Ubuntu VM with Autopsy
* Ubuntu VM with MISP and TheHive

