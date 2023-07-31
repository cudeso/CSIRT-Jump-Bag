 - [CSIRT-Jump-Bag](#csirt-jump-bag)
- [CSIRT-Jump-Bag](#csirt-jump-bag)
  - [First Responder tools](#first-responder-tools)
  - [Documents](#documents)
  - [Hardware](#hardware)
  - [Software](#software)
  - [Pi-CSIRT](#pi-csirt)
- [Incident Response Laptop](#incident-response-laptop)
  - [Virtual machines](#virtual-machines)
    - [Windows 10 base image](#windows-10-base-image)
    - [FLARE](#flare)
    - [SIFT image](#sift-image)
    - [Autopsy](#autopsy)
  - [Checklist Incident Response laptop after incident investigation](#checklist-incident-response-laptop-after-incident-investigation)

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
* [Sysinternals](https://learn.microsoft.com/en-us/sysinternals/) 
* [Winpmem](https://winpmem.velocidex.com/)
* [FTK Imager](https://accessdata.com/product-download/ftk-imager-version-4-5)
* [Nirsoft tools](https://www.nirsoft.net/utils/index.html)
* tcpdump
* Wireshark
* portmon
* dumpit
* [memoryze](https://fireeye.market/apps/211368)
* [KAPE](https://www.kroll.com/en/services/cyber-risk/incident-response-litigation-support/kroll-artifact-parser-extractor-kape)
* [Mandiant Redline](https://fireeye.market/apps/211364)
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

# Incident Response Laptop

* Hardware
  * Processor: Intel Core i7 or i9, with at least eight cores
  * Memory: 64GB DDR4
  * Harddrive: M2 NVME SSD (for speed) with 1TB storage
  * 2x USB3.1 and 1x USB-C
  * Screen size doesn't really matter, you can use an external screen
* Operating system
  * Host operating system doesn't really matter as none of the IR work is done on the host operating system
  * Windows 10 or Ubuntu Linux
* Non-domain-joined laptop
* Access to the laptop must be protected with a username/password
* Full disk encryption is highly advised
* Three partitions
  * **System** partition, with the host operating system
  * **Data** partition, with the virtual machines
  * **Evidence** partition, used to transfer evidences from USB or other sources
    * This partition is always wiped when an investigation is finished
* **Hypervisor** Install virtualisation software. All forensic work is done via on in virtualised environment. Make sure the laptop BIOS supports an hyporvisor.
  * VMWare (Workstation / Fusion)
  * After the installation of the virtual machines, always create a "CLEAN" snapshot (label it correctly). 

## Virtual machines

On IR-laptop
* FLARE workstation
* SIFT workstation
* Ubuntu VM with Autopsy
* (optional) Ubuntu VM with MISP and TheHive

### Windows 10 base image 

* Download Windows 10 image from Microsoft https://www.microsoft.com/en-us/software-download/windows10ISO
* Use this ISO to setup FLARE, or other Windows 10 machines to run or evaluate samples
* Create the VM in the **Data** partition
* Setup Windows 10 with a local account. Include privacy hardening settings
* Install all updates
* Install VMware Tools
* Reboot
* Set the time zone to UTC. This is a general best practice for conducting forensic analysis and ensures a standard time zone is being used across all tools.
* Configure Windows Explorer to show hidden files. Open File Explorer -> View -> check “Hidden items” and “File name extensions”.
* Create a snapshot

### FLARE

Installation takes about 3h to complete.

* Create a full clone from base Windows 10 VM
* Disable Tamper Protection and Defender
  * https://support.microsoft.com/en-us/windows/prevent-changes-to-security-settings-with-tamper-protection-31d51aaa-645d-408e-6ce7-8d7f8e593f87
  * https://www.windowscentral.com/how-permanently-disable-windows-defender-windows-10
  * Disable cloud-delivery protection
* Install Flare VM
  * https://github.com/mandiant/flare-vm
* Install PowerShell 7
  * https://learn.microsoft.com/en-us/powershell/scripting/install/installing-powershell-on-windows?view=powershell-7.3#msi 
* [VSCode](https://code.visualstudio.com/docs/?dv=win)
* [Git for Windows](https://gitforwindows.org/)
* [Sysinternals](https://learn.microsoft.com/en-us/sysinternals/) if not installed by Flare
* [Winpmem](https://winpmem.velocidex.com/)
* [FTK Imager](https://accessdata.com/product-download/ftk-imager-version-4-5)
* [Nirsoft tools](https://www.nirsoft.net/utils/index.html)
* [KAPE](https://www.kroll.com/en/services/cyber-risk/incident-response-litigation-support/kroll-artifact-parser-extractor-kape)
* [memoryze](https://fireeye.market/apps/211368)
* [Mandiant Redline](https://fireeye.market/apps/211364)
* Create a "Clean" snapshot at the end of the installation


### SIFT image

The SIFT Workstation is a collection of free and open-source incident response and forensic tools designed to perform detailed digital forensic examinations in a variety of settings. It can match any current incident response and forensic tool suite. SIFT demonstrates that advanced incident response capabilities and deep-dive digital forensic techniques can be accomplished using cutting-edge open-source tools that are freely available and frequently updated.

* Create a full clone from base Windows 10 VM
* Follow the instructions from Option 2B at https://www.sans.org/tools/sift-workstation/
  * Easy Installation on Microsoft Windows using Windows Subsystem for Linux
* Create a "Clean" snapshot at the end of the installation


### Autopsy

https://www.autopsy.com/download/

## Checklist Incident Response laptop after incident investigation

* Safeguard evidences (USB, locker)
* Update chain-of-custody documentation
* Wipe evidence partition
* Reset virtual machines to CLEAN state

