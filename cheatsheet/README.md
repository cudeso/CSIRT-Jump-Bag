## Network

Extract URLs from a pcap file

```tshark -V -r file.pcap -T fields -e http.request.full_uri | grep -v "^$"```
