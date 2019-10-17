# Basic String Concat
a="Hello"
b="World"
c=$a$b
d=$a' '$b
# echo $c
# echo $d

# Print variable length
# echo ${#c}
# echo ${#d}

# Substring + String extraction
# d="Hello World"
h=${d:0:5}
w=${d:5}
# echo $h
# echo $w

# Can also specify negative numbers to count from the end
# echo ${d: -5}
# echo ${d: -5:5}


# Variable substitutions
fruit="cherry apple banana banana cherry banana pie vegan mojo loco banana"
echo $fruit
echo ${fruit/banana/durian}
# This replaces 1st instance of banana with durian

echo ${fruit//banana/durian}
# This replaces all instances of banana with durian

# Also supports use of wildcards, pattern matching and regex
echo ${fruit/#apple/durian}
# only replaces with durian if 1st occurence is apple

echo ${fruit/%cherry/durian}
# only replaces with durian if last occurence is cherry

echo ${fruit/c*/durian}
# replaces everything after the character 'c' with durian
