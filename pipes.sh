# Create a pipe called named_pipe
# mkfifo named_pipe

# In Terminal 1, type echo "pipe is stuck .." > named_pipe
# echo "pipe is stuck .." > named_pipe
# In Terminal 2, type cat "named_pipe"
# cat "named_pipe"
# Voila! Basically, a pipe sends the STDOUT of one command (echo "pipe is stuck .." > named_pipe) to STDIN of another command (cat "named_pipe")

# Remove pipe
# rm named_pipe


# Redirect STDOUT to a file and overwrite
# ls > /home/lsout.txt

# Redirect STDOUT to a file and append
# ls >> /home/lsout.txt

# Every command has one input (STDIN) and two outputs (STDOUT & STDERR)

# Redirect STDERR to a file and overwrite
# Here 2> denotes second output stream
# ls 2> /home/lsout.err
# Below variation does an append to existing file, if not creates a new one
# ls 2>> /home/lsout.err

# Redirect both STDOUT and STDERR to a file (Note usage of ampersand &)
# ls &> /home/lsout.txt
# Append variation
# ls &>> /home/lsout.txt

# Find all occurences of '/etc', then sort that output
# Then show to STDOUT and store it in a file named 'etcshort.txt' 
# And then append number of lines to end of STDOUT
# find /etc | sort | tee etcshort.txt | wc -l

# Another variation is to perform all actions above and then store errors into a different file
find /etc 2> etcerr.txt | sort | tee etcshort.txt | wc -l