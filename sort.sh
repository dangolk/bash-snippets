# Sort contents of file line by line and print to STDOUT
# sort employee.txt

# Sort contents of File:1 and store them into File:2
# sort employee.txt > sorted-employee.txt
# Below variation achieves the same intended effect
# sort < employee.txt > sorted-employee.txt


# Reverse Order Sort
# sort -r employee.txt

# Numerical Order Sort
# sort -n employee.txt

# Numerical Reverse Sort
# sort -rn employee.txt

# Sort based on particular column, say for instance column 'k'
# sort -k 4n employee.txt

# Sort contents of file and remove duplicates from output (in other words -> show only unique records)
# sort -u employee.txt

# Add line number to sorted output of unique records
# sort -u employee.txt | awk '{print NR, $0}'