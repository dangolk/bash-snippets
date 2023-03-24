## Reverse History Search (reverse-i-search)
```
CTRL + R
```

# Forward History Search (i-search)
```
CTRL + S
```

## For i-search to work, add this to your bash profile (~/.bash_profile, ~/.bashrc)
```
stty -ixon
```

## Change bash prompt to '#' to remove current directory info on bash prompt for extra viewing space
```bash
sysadmin@KIRAN:/mnt/c/Users/Kiran/Documents/code/$ PS1='$'
$
```

## cat with line numbers:
```bash
$ cat --number /etc/hosts
     1	127.0.0.1	localhost
     2	127.0.1.1	ub18k
     3	
     4	# The following lines are desirable for IPv6 capable hosts
     5	::1     ip6-localhost ip6-loopback
     6	fe00::0 ip6-localnet
     7	ff00::0 ip6-mcastprefix
     8	ff02::1 ip6-allnodes
     9	ff02::2 ip6-allrouters
    10	
    11	192.168.0.23	cos7
```
