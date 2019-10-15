#!/usr/bin/bash
 
# Print script name.
echo $0
#!/usr/bin/bash
 
# Define an array.
declare -a cmd=("one" "two" "three")
 
# Call the array elements.
for i in ${cmd[*]}; do
  echo ${i}
done