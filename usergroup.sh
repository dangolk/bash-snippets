# Create new group
sudo groupadd testgroup

# Set new password for group
sudo gpasswd testgroup

# Turn off the shadow suite by running following command (not recommended on any machine except test environments)
sudo grpunconv

# Instead to make a system more secure, try enabling the shadow suite (if it's not already enabled by default)
sudo pwconv
sudo grpconv

# Running command below will verify that you're using shadow suite
cat /etc/passwd 
# Every line should have an 'x' for 2nd column/field

# Password Hash Types
1 = md5
2a/2y = Blowfish
5 = SHA256
6 = SHA512

# Example Hash 
$6$s2J9mHL6$2iH9X0iaJ6EUa83luZNK9iOkHhfrdfqLyDIOUlYj0uvZYEBroDlVjdQPh4DihF6cEq9c8z37LclbpFl4mhtSV.
# This is SHA512 encrypted, since it starts with $6$


# To change password hash encryption algorigthm
sudo authconfig --passalgo=sha512 --update
# Settings are stored, saved and updated in /etc/login.defs

# If you change the password hash encryption algorigthm, you need to force your users to change their password
sudo chage -d 0 <username>
# This will take effect after logging in/out
sudo passwd --expire <username>
# This variation is more instant

# System Utility to analyze password quality by giving you a score on password strength
echo 'password' | pwscore
# Free web tool to achieve same goal:
https://howsecureismypassword.net/

# View account info for users
sudo chage -l <username>

# Make changes to user account
sudo chage -I -1 -m 0 -M 99999 -E -1 <username>
# -I -1 -> sets password inactive to never
# -m 0  -> minimum number of days to change password to 0, user can change password anytime
# -M 99999  -> maximum number of days between password change -> 274 years
# -E -1  -> account expires to never

# Areas of interest:
/etc/passwd
/etc/shadow
/etc/login.defs
/etc/default/useradd
/etc/gshadow


# Add new user in linux
sudo useradd <username>
# Will create a new folder under /home/<username> with some init/startup files
# .bash_logout .bash_profile .bashrc

# Set password
sudo passwd <username>
# Verify either with sudo cat /etc/passwd
# or with chage command
sudo chage -l <username>

# Delete user account
sudo userdel -r bob
# -r flag removes user data/content

# Modifications to user account
sudo usermod -a -G audio sally
# will add (-a) username sally to group (-G) audio

# Lock an account
sudo usermod -L sally
# -U for unlocking

# Disable all forms of login for a user
sudo usermod -s /sbin/nologin sally

# Enable login by changing shell login for user account
sudo usermod -s /bin/bash sally

# View user who logged in initially
logname
# View currently active user in the shell
whoami

# Switch user with su command
sysadmin@localhost:$ su root
logname
# will give you logged in username -> sysadmin
whoami
# will give you root

# su root is not the same as logging in as root
echo $PATH
# will show that you'll have different environment variables available depending on who's logged in vs running commands simply as a different user

# To restrict command usage, resource usage and limit access on particular users/group
sudo visudo

# Create new user group
sudo groupadd -g 1050 accounting
# -g specifies groupID

# Change groupID
sudo groupmod -g 1051 accounting

# Add user to a group
sudo gpasswd -a grant accounting
# -a for adding

# Remember, add user to group can be done with usermod also
sudo usermod -a -G accounting grant

# Below variation adds user to group as Administrator
sudo usermod -A -G accounting grant
# notice -A

# Delete group
sudo groupdel accounting

# Log into a new group, basically changes current group ID during a login session.
newgrp <groupname>

# To verify switching group
id