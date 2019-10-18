# i=1
# while read f; do
#     echo "Line $i: $f"
#     ((i++))
# done < file-rw.txt


# To run only code segment below:
# ./file-rw.sh <filename>
# ./file-rw.sh /etc/passwd
# while IFS= read -r LINE; do
#     echo "$LINE"
#     # This will print one line at a time
#     # This while loop will run for however many lines exist in the file that was read
# done < $1
# First argument <filename> passed as $1 is piped into 'read -r '
# Notice use of IFS (Internal File Separator) set to nothing, so line won't break while reading spaces or other characters



# Slight variation by replacing every occurence of : with | line by line
while IFS= read -r LINE; do
    echo "$LINE" | sed 's/:/ | /g'
    # This will print one line at a time
    # This while loop will run for however many lines exist in the file that was read
done < $1