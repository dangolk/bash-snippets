# # Simple basic if, then, else using bash syntax
# a=5
# b=10
# if [ $a -gt $b ]; then
#     echo $a is greater than $b!
# else
#     echo $b is greater than $a!
# fi


# Regex conditional logic
# str='Hoolio got dat 619!'
# if [[ $str =~ [0-9]+ ]]; then
#     echo "Numbers are present in $str"
# else
#     echo "Numbers are not present in $str"
# fi


# Simple while .. do .. done loop in bash syntax
# i=0
# while [ $i -le 10 ]; do
#     echo i:$i
#     ((i+=1))
# done

# Another variation with until .. do .. done loop in bash syntax
# j=0
# until [ $j -ge 10 ]; do
#     echo j:$j
#     ((j+=1))
# done
# until loop runs one time less as opposed to while loop 


# Basic usage of for loop using bash syntax
# for i in 1 2 3
# do
#     echo $i
# done

# Using specified range, and intervals
# for i in {0..100..10}
# do
#     echo $i
# done

# for loop traditional syntax also supported
# for (( i=1; i<=10; i++))
# do
#     echo $i
# done

# Looping through arrays 
# arr=("apple" "banana" "cherry")
# for i in ${arr[@]}
# do
#     echo $i
# done

# Looping through associative arrays
# declare -A arr
# arr["name"]="Candy"
# arr["id"]="007"
# for i in "${!arr[@]}"
# do  
#     echo "$i: ${arr[$i]}"
# done
# '!' mark is used to access keys inside the associative array
# "" are used since keys that are string can contain spaces in them


# Command substitution inside loops adds great power
# for i in $(ls)
# do 
#     echo "$i"
#     ((count++))
# done
# Notice result from command substitution '$()' returns an array which can be easily iterated on for processing inside the loop

# Slight variation by passing $(ls -al) instead
# count=2
# for i in $(ls -al)
# do 
#     echo "$i"
#     ((count++))
#     if [[ $(expr $count % 9) == 0 ]]; then
#         echo "_______________"
#     fi
# done
# echo "Number of entries: "$count
# every column from every line is parsed and sent inside the loop as $i variable for processing

# Switch Case conditional logic using bash syntax
# a="dog"
# case $a in
#     cat) echo "Feline";;
#     dog|puppy) echo "Canine";;
#     *) echo "No match!";;
# esac