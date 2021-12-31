## Immutable files

`lsattr -R -a 2> /dev/null | sed -rn '/-i-/p'`

## Files in shm

`find /dev/shm -type f`

