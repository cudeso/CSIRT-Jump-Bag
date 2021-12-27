## Network

### Export files from a pcap

Wireshark, File, Export objects

### Extract URLs from a pcap file

```tshark -V -r file.pcap -T fields -e http.request.full_uri | grep -v "^$"```

### Extract PHP URLs from a pcap file

```tshark -V -r file.pcap -T fields -e http.request.full_uri -Y "http.request.uri matches \"/[a-z]+\.php$\```

## WinRM

### List WinRM sessions

```Get-WSManInstance -ComputerName localhost -ResourceURI Shell -Enumerate```

## Pipes

### List created pipes

```Get-ChildItem \\\\.\\pipe\\```

## Windows misc

* Rundll32 withou arguments


