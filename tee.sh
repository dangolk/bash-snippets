# Reads STDIN and writes to both STDOUT and one or more files
# Command named after T-Splitter used in plumbing
# https://www.geeksforgeeks.org/tee-command-linux-example/

# This will output info about a file
# -c prints byte counts
# -m prints character counts
# -l pritns newline counts
# -L prints max line length
# -w prints word counts
# wc -cmlLw employee.txt

# Below commands will retrieve file info from File:1 and then send that output to two different output streams at the same time
# 1st stream -> STDOUT -> terminal
# 2nd stream -> FILE > employee-stat.txt
# wc -cmlLw employee.txt | tee -a employee-stat.txt
# -a is for append

# T-split output of ls into STDOUT and lsout.txt at the same time
# ls | tee lsout.txt
# Append version below
# ls | tee -a lsout.txt
