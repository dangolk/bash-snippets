# Try running this script with one argument
# ./interactive-shell.sh sicko
# will echo sicko
# echo $1


# All arguments sent to this script will be printed
# for i in $@
# do
#     echo $i
# done

# echo "There were $# arguments."
# A total count of all arguments will also be printed


# Allow user to pass in arguments using flags -f, both of which are optional
user='default'
pass='default'
while getopts u:p: option; do
    case $option in
        u) user=$OPTARG;;   # -u
        p) pass=$OPTARG;;   # -p
    esac    
done

printf "\nUser: %s\nPassword: %s\n\n" $user $pass
# Order of these passed arguments doesn't matter, the appropriate flags will re-direct arguments accordingly