# Windows log files

## Chainsaw

Because Raspberry Pi is ARM architecture you cannot use one of the releases, you have to compile it.

```
git clone --recurse-submodules https://github.com/countercept/chainsaw.git
cd chainsaw/
cargo build --release
```

When finished, the binary is in target/release

```
cd target/release/
./chainsaw hunt ../../evtx_attack_samples/ --rules ../../sigma_rules/ --mapping ../../mapping_files/sigma-mapping.yml
```

# Netflow / NFSEN / NFDUMP

## Install and Start

Change 

```
$BASEDIR = "<where to install>";
$PREFIX  = '<prefix to nfdump>';
$USER    = "www-data";
$WWWUSER  = "www-data";
$WWWGROUP = "www-data";
%sources = (

);
```

#### Install dependencies

`sudo apt-get install apache2 php libapache2-mod-php librrds-perl librrdp-perl librrd-dev libmailtools-perl build-essential autoconf rrdtool`

#### Install Perl library
`apt-get install libsocket6-perl`

#### Run installer script
`./install.pl ./etc/nfsen.conf`

#### Start
`<path>/nfsen/bin/nfsen start`

Then verify it's listening on the port defined in sources.

It can take a couple of minutes (>5) before netflow data is displayed.

## Local (Linux) netflow generator

Install **fprobe**
`apt-get install fprobe`


## Patching

Patch some files so that nfsen is able to run on Ubuntu 20+

### libexec/NfSenRRD.pm

Change RRD version. Ubuntu 20+ comes with RRD version 1.7

```
76c76
< 	if ( $rrd_version >= 1.2 && $rrd_version < 1.6 ) {
---
> 	if ( $rrd_version >= 1.2 && $rrd_version < 1.8 ) {
```

### libexec/NfProfile.pm

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
