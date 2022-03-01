## Immutable files

`lsattr -R -a 2> /dev/null | sed -rn '/-i-/p'`

## Files in shm

`find /dev/shm -type f`

## Check remote SSL certificate

`openssl s_client -connect <host>:443`

`openssl s_client -connect <host>: :443 </dev/null 2>/dev/null | openssl x509 -noout -text | grep DNS:`

## Convert MSG to EML

Convert msg (Outlook) to EML (the rest of the world)

```msgconvert x.eml```

