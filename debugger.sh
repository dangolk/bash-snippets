# Run bash script in debuggin mode with -x flag as:
# bash -x debugger.sh
for i in {1..10}; do
    echo $i
done
# output with plus symbol(+) is output from debugger

# Manually step through portions of code by using set -x | +x 
set -x
for i in {3..33..3}; do
    echo $i
done
set +x
# only code segments between set -x .. set +x will run in debug mode

# To save debugging info on a separate file
# ./debugger.sh 2> debug.txt
# will re-direct STDERR to debug.txt