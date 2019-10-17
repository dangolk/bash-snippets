# # NAME="Kiran Dangol"
# # echo "My name is $NAME"

# # echo $(ls -al) > data.txt
# # echo SERVER_NAME=$(hostname)

# read -p "Please Enter your name : " NAME
# echo "Thank you, it's nice to meet you, $NAME"

# echo k{a,e,i,o,u}ran

# pdir="./newdir"
# fname="test.txt"
# mkdir $pdir
# touch $pdir/$fname

# ls -al "${pdir}/${fname}_january"

# echo "My name is $(whoami)"
# echo "My name is `whoami`"

echo "Permissions for find are $(ls -al $(which find))"

# Create 'n' number of files with regex
touch file_{1..10}

# Below variation will create files in sorted order
touch file_{01..10}

# Print numbers in a range with intervals
echo {1..100..2}
# prints 1 3 5 7 ... 99

echo {1..47..7}
# print 1 8 15 22

# works with letters also
echo {a..z}

echo {a..Z}

echo {A..z}
# will print all letters in that range (uppercase and lowercase, and some symbols)

# intervals work with letters as well
echo {w..d..2}
# will understand that it's a range from 'w' reverse all the way to 'd', with spaced-intervals of 2
# w u s q o m k i g e

touch {apple,banana,cherry,durian}_{001..100}{w..d}
# will create ~8000 files starting from 
# 4 x 2 x 100 x 10
# apple_001w
# apple_001u
# ...
# ...
# durian_100e

# Copy everything from current folder to a different folder
cp -v * ../newfolder 1>../success.txt 2>../error.txt
# successes will be re-directed to success.txt -> STDOUT -> File
# failures will be re-directed to error.txt -> STDERR -> File

cp -v * ../newfolder &> ../log.txt
# this variation re-directs both successes and failures to a single file

# Simple generic bash variable
d=123

# Variation of declaring variables
declare -i d=123
# -i indicates integer
declare -r e=123
# -r indicates read-only