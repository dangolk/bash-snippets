# grep tcp /etc/services | awk '{print $1}' | sort | less

# Default print everything in file
# awk '{print}' employee.txt

# Search using wildcards */manager/
# awk '/manager/ {print}' employee.txt

# awk '/manager/' employee.txt

# Select only specific columns to display from output
# awk '{print $1,$4}' employee.txt

# $NF shows last field
# awk '{print $1,$NF}' employee.txt

# NR adds line number to your output, $0 selects the whole line as output
# awk '{print NR, $0}' employee.txt

# Show output only from line 3 to line 6
# awk 'NR==3,NR==6 {print NR,$0}' employee.txt

# Select particular columns from output and add line number entry to it to formatted, more-readable output
# awk '{print NR " - " $1 " - " $4}' employee.txt

# Count number of lines in the output
# awk 'END { print NR}' employee.txt

# Print Squares of 1st numbers from 1 to n (6)
# awk 'BEGIN { for(i=1;i<=6;i++) print "square of", i, "is",i*i; }'