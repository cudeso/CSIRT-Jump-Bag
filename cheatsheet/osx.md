## Process creation and file creation monitoring

https://objective-see.org/tools.html

```
sudo ProcessMonitor.app/Contents/MacOS/ProcessMonitor -pretty
sudo FileMonitor.app/Contents/MacOS/FileMonitor -pretty
```

## Tools

https://objective-see.org/tools.html

- LuLu: In today's connected world, it is rare to find an application or piece of malware that doesn't talk to a remote server. LuLu is the free, open-source, firewall for Macs, that can protect your network connections and detect malicious activity.
- Do Not Disturb: Physical access (or "evil maid") attacks are extremely insidious yet highly efficient. Do Not Disturb detects and alerts you of such attacks!
- KnockKnock: "KnockKnock... Who's There?" See what's persistently installed on your Mac. KnockKnock uncovers persistently installed software in order to generically reveal malware.
- TaskExplorer: TaskExplorer allows one to visually explore all running tasks (processes). Quickly see a task's signature status, loaded dylibs, open files, network connection, and much more.
- ReiKey: Malware and other applications may install persistent keyboard "event taps" to intercept your keystrokes. ReiKey can scan, detect, and monitor for such taps.
- Netiquette: Netiquette, a network monitor, allows one to explore all network sockets and connections, either via an interactive UI, or from the commandline.
- BlockBlock: BlockBlock provides continual protection by monitoring persistence locations. Any new persistent component will trigger a BlockBlock alert, allowing malicious items be blocked.
- RansomWhere?: By continually monitoring the file-system for the creation of encrypted files by suspicious processes, RansomWhere? aims to protect your personal files, generically stopping ransomware in its tracks.
- OverSight: Mac malware often spies on users by recording audio and video sessions...sometimes in an undetected manner. OverSight monitors a mac's mic and webcam, alerting the user when the internal mic is activated, or whenever a process accesses the webcam.
- KextViewr: KextViewr displays all loaded kexts, along with their signing status, full path, VirusTotal detection ratios, and more.
- Dylib Hijack Scanner: Dylib hijack scanner or DHS, will scan your computer for applications that are either susceptible to dylib hijacking or have been hijacked.
- What's Your Sign: What's Your Sign adds a ^-click menu item to Finder.app. Click it to display the code-signing information about any file.
- Commandline Utilities: Various CLI utilities to facilitate system monitoring and malware analysis.


## Commands

```system_profiler```

```dscl . -list /Users```

## Query

* Curl commands in history
* path="/usr/bin/nc" AND CommandLine contains "-e "
* event=fileCreatedOrModified file_path=/Library/LaunchDaemons/com.apple.*.plist 
* * launch agents and daemons at the system level are protected by System Integrity Protection.
* * System level: /System/...
* * Root level: /Library/...


## Sources
* [https://themittenmac.com/what-does-apt-activity-look-like-on-macos/](https://themittenmac.com/what-does-apt-activity-look-like-on-macos/)
* [https://public.cyber.mil/stigs/](https://public.cyber.mil/stigs/)
* [https://www.cisecurity.org/benchmark/apple_os/](https://www.cisecurity.org/benchmark/apple_os/)
