# Line break on bash terminal
printf "hello\nworld\n"

# More ways of formatting output
printf "\nName:\t%s\nID:\t%04d\n\n" "Someone Else" "123"


today=$(date +"%d-%m-%Y")
time=$(date +"%H:%M:%S")
printf -v d "Current User:\t%s\nDate:\t\t%s @ %s\n" $USER $today $time
echo "$d"