# #!/usr/bin/bash

### KD: One way to utilize bash arrays

# # Print script name.
# echo $0
# #!/usr/bin/bash
 
# # Define an array.
# declare -a cmd=("one" "two" "three")
 
# # Call the array elements.
# for i in ${cmd[*]}; do
#   echo ${i}
# done


# #!/usr/bin/bash

### KD: Another way to utilize bash arrays (preferred)

# # Define an array.
# declare -a cmd
 
# # Assign elements to an array.
# cmd[0]="one"
# cmd[1]="two"
# cmd[2]="three"
# cmd[3]="1"
# cmd[4]="yolo"
 
# # Call the array elements.
# for i in ${cmd[*]}; do
#   echo ${i}
# done


#!/usr/bin/bash

### KD: Appending commands into bash arrays

# <code>
# Define an array.
declare -a cmd
 
# Assign elements to an array.
cmd[0]="script.sh"
# cmd[1]="mysql-connect.sh"
# cmd[2]="array.sh"
 
# Call the array elements.
for i in ${cmd[*]}; do
  `pwd`/${i}
done