## Network

### Extract URLs from a pcap file

```tshark -V -r file.pcap -T fields -e http.request.full_uri | grep -v "^$"```

### Extract PHP URLs from a pcap file

```tshark -V -r file.pcap -T fields -e http.request.full_uri -Y "http.request.uri matches \"/[a-z]+\.php$\```
