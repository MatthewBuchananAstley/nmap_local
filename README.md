# nmap_local
Script to nmap scan the local machine and report any surprising open ports to syslog.

When is such a script handy? 

When you install dependencies all sorts for funky new frameworks all sorts, vulnerability scanners all sorts, container daemons all sorts, etcetera and so forth, which happen to very conveniently open a port on your system.

Fortunately the nmap_local script can help to mitigate.

# Configuring exceptions to the rule
Services that need to have an open port can be defined in nmap_local.conf. 
The line that appears in the nmap scan output can be used. For instance:

127.0.0.1 25/tcp open  smtp

nmap_local.conf goes in /etc/security/nmap_local.conf

# Nmap local scan at boot time
The systemd service file to have the script check the system at boot time:

nmap_local.service goes in /lib/systemd/system/nmap_local.service

systemctl enable nmap_local

or manually create the symlink in: 

cd /etc/systemd/system/default.target.wants ;
ln -s /lib/systemd/system/nmap_local.service nmap_local.service

# Versions

nmap_local should work on Ubuntu Linux
nmap_local_3 should work on Fedora Linux

