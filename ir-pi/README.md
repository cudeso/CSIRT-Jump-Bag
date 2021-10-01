# libexec/NfSenRRD.pm

Change RRD version. Ubuntu 20+ comes with RRD version 1.7

```
76c76
< 	if ( $rrd_version >= 1.2 && $rrd_version < 1.6 ) {
---
> 	if ( $rrd_version >= 1.2 && $rrd_version < 1.8 ) {
```

# libexec/NfProfile.pm

Fix 'live' profile hash

```
1190c1190
< 	my $socket		 = shift;
---
> 	#my $socket		 = shift;
1346c1346
< 				print $socket ".info Rebuilding Profile '$profile': Completed: $completed\%\n";
---
> 				#print $socket ".info Rebuilding Profile '$profile': Completed: $completed\%\n";
2947c2947,2948
< 	my $status = DoRebuild($socket, \%profileinfo, $profile, $profilegroup, $profilepath, 0, $RebuildGraphs);
---
> 	#my $status = DoRebuild($socket, \%profileinfo, $profile, $profilegroup, $profilepath, 0, $RebuildGraphs);
> 	my $status = DoRebuild(\%profileinfo, $profile, $profilegroup, $profilepath, 0, $RebuildGraphs);
```
