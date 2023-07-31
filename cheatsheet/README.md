## Acquisition

### Process

`tasklist`and `tasklist svc`

`wmic process get " ProcessID,ExecutablePath,CommandLine"`


### Users

`wmic useraccount where "LocalAccount=TRUE"`

`Get-LocalUser | select * `

`Get-WinEvent -filterhash @{Logname='Security';ID=4720}`


## Event IDs

|ID|Description|
|----|------|
|4720, 4722, 4724 | New user and enable account, password reset|
|104, 1102| Log cleared|
|4728, 4732, 4756, 4733, 4672| Membership change, special privileges|
|4624/4625| Logon/logoff|
|4624; 4625; 4634 ; 4647-4649, 4768 – 4773, 4675, 5378| Kerberos or special creds|
|4649, 4768-4773, 5378| Lock/unlock|
|4662| Object Access|
|4776| Validated Credentials _ also local accounts|
|4694| New service|
|4702, 4699| Scheduled task updated, delete|

## Memory

`winpmem_mini_x64_rc2.exe`

## Network

`netstat -naob`

`netsh trace start persistent=yes capture=yes tracefile=c:\temp\nettrace.etl` ; `netsh trace stop`

`pktmon filter add -p 502`
`pktmon start -c --pkt-size 0 --log-mode multi-file`
Files are stored in windows/system32 ; convert to Wireshark readable with `pktmon pcapng c:\windows\system32\PktMon1.etl -o c:\users\joe\Desktop\pktmon1.pcapng`

## Misc

### Hashes

`certutil -hashfile file SHA256`

### SAM

- \windows\system32\config\SAM
- SAM\Domains\Account\Users

### psexec

`psexec -sid cmd.exe` 

### Base64

Regular expression to find BASE64 presence in a blob of text

```[a-zA-Z0-9+/=]{30,}```


### CyberChef sources

https://github.com/mattnotmax/cyberchef-recipes

## Network

### Export files from a pcap

Wireshark, File, Export objects

### Extract URLs from a pcap file

```tshark -V -r file.pcap -T fields -e http.request.full_uri | grep -v "^$"```

### Extract PHP URLs from a pcap file

```tshark -V -r file.pcap -T fields -e http.request.full_uri -Y "http.request.uri matches \"/[a-z]+\.php$\```

## Windows

### Magic Bytes files

| Header  | File type  |
|---|---|
| ```TVqQ``` | PE File in **base64** encoding  |
| ```78 9C```  | Zlib  |
| ```MZ ``` | PE Header   |
| ```4D 5A```  | PE   |
| ```5A 4D```  | PE   |
| ```50 4B``` | Office | 
| ```50 4B``` | Java Archive | 
| ```50 4B``` | PKZIP | 

https://www.garykessler.net/library/file_sigs.html
https://asecuritysite.com/forensics/magic


### WinRM

#### List WinRM sessions

```Get-WSManInstance -ComputerName localhost -ResourceURI Shell -Enumerate```

### Pipes

#### List created pipes

```Get-ChildItem \\\\.\\pipe\\```

### Misc

* Rundll32 without arguments

### GPOs

From: [FireEye](https://www.fireeye.com/content/dam/fireeye-www/current-threats/pdfs/wp-ransomware-protection-and-containment-strategies.pdf)

Review the scope of configured GPOS
```get-gpo -all | export-csv -path “c:\temp\gpo-listing-all.csv” -NoTypeInformation``` 

List existing GPOs and assigned permissions

```
$permissions = Foreach ($GPO in (Get-GPO -All | Where {$_.DisplayName -like “*”}))
    {
        Foreach ($Permission in (Get-GPPermissions $GPO.DisplayName -All | Where {$_.Permission -like “*”}))
        {
            New-Object PSObject -property @{GPO=$GPO.DisplayName;Trustee=$Permission.Trustee.Name;Permission=$Permission.Permission}
        }
    }
$permissions | Select GPO,Trustee,Permission | Export-CSV c:\temp\GPO-Permissions.csv -NoTypeInformation
```
