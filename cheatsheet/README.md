## Misc

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
