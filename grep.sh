grep tcp /etc/services | less

grep -i <search-term> <file>
# -i for case-insensitive

grep -i <search-term> <file> | awk {'print $n'}
# n for column number

ping -c 1 google.com | grep 'bytes from'