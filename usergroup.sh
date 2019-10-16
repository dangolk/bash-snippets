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