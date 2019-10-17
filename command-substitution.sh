# Calculate how long a ping from you local machine to a certain website takes
# a=$(ping -c 1 example.com | grep 'bytes from' | cut -d = -f 4)
# echo "The ping took $a"

# Some arithmetic operations allowed in bash scripting
# d=2
# e=$((d+2))
# echo $e
# ((e++))
# echo $e
# ((e--))
# echo $e
# echo
# e+=5
# echo $e
# ((e*=3))
# echo $e
# ((e/=3))
# echo $e
# ((e-=5))
# echo $e

# Support for floating point numbers
# f=$((1/3))
# echo $f
# g=$(echo 1/3 | bc -l)
# echo $g

# Support for comparison and operators
# [[ "cat" == "cat" ]]
# echo $?
# spaces after [[ and required as part of bash scripting syntax

# [[ "cat" == "dog" ]]
# echo $?
# return values will be 0 for TRUE and 1 for FALSE

# [[ 20 > 100 ]]
# will return true[0] since this is treated as string comparison
# echo $?

# [[ 20 -gt 100 ]]
# will return actual comparison, which is false[1]
# echo $?


# TRUE:0 || FALSE:1
# false; echo $?
# # returns 1
# true; echo $?
# # return 0

# # Print comparisons directly inside bash shell terminal
# [[ "kiran" == "dangol" ]] && echo "True" || echo "False"
# [[ 20 -gt 100 ]] && echo "True" || echo "False"
# [[ 20 -gt 100 ]] && echo $? || echo $?


# Support for Array syntax
declare -A ROOT=(
  [birds,tombit]=4 
  [birds,canary]=0
  [fish,moray]=5
)
echo ${ROOT[birds,tombit]}

# Added snippet for counting length of output by storing it in a variable
ou=${ROOT[birds,tombit]}

echo  ${#ou}
