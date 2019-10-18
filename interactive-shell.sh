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
# user='default'
# pass='default'
# while getopts u:p: option; do
#     case $option in
#         u) user=$OPTARG;;   # -u
#         p) pass=$OPTARG;;   # -p
#     esac
# done

# printf "\nUser: %s\nPassword: %s\n\n" $user $pass
# Order of these passed arguments doesn't matter, the appropriate flags will re-direct arguments accordingly

# Another variation dealing with unspecified flags and multiple character flags
# user='default'
# pass='default'
# while getopts :u:p:ab option; do  # :u at the beginning is for flags that haven't been specified. If any unspecified flags are given, ?) option is executed for each of the unidentified flags
#     case $option in
#         u) user=$OPTARG;;   # -u
#         p) pass=$OPTARG;;   # -p
#         a) echo "Got the A flag";;
#         b) echo "Got the B flag";;
#         ?) echo "I dont know what $OPTARG is!";;
#     esac
# done

# printf "\nUser: %s\nPassword: %s\n\n" $user $pass

# Basic user input from command line shell
# echo "What is your name?"
# read name
# echo "Hi, "$name"!"

# echo "What is your password?"
# read -s pass
# # -s flag means silent, it won't show the characters typed (e.g. password)
# echo $pass" is a really good password!"

# read -p "Are you high? (Y/N):  " isHigh
# # Add a prompt before reading user input

# # if [ $isHigh == 'Y' ]; then
# #     echo "Yessir!!";
# # else
# #     echo "Aigght now!";
# # fi

# # One-line variation
# if [ $isHigh == 'Y' ]; then echo "Yessir!!"; else echo "Aigght now!"; fi

# Let user select from list of options
# select animal in "cat" "dog" "bird" "fish"
# do
#     echo "You selected $animal."
#     break
# done

# Implementing basic input validation
# if [ $# -lt 3 ]; then
#     cat <<- EOM
# This command required at least 3 arguments:
# Username, ID and accNum
# EOM
# else
#     echo "Username: $1"
#     echo "ID: $2"
#     echo "Account Number: $3"
# fi



# Validating a specific type of user input (use case: 4-digit year)
# read -p "What year is it? [YYYY] " y
# while [[ ! $y =~ [0-9]{4} ]]; do
#     read -p "Pleas type in a year dumb-ass! [YYYY] " y
# done
# echo "Feels good to be alive in $y!"


# Input validation using a loop
# read -p "Favorite Pokemon? " p
# while [[ -z $p ]]; do
#     read -p "I need an answer! Favorite Pokemon? " p
# done
# echo "I love $p!"


# Conditional logic based on user selected option
echo "Choose your starter Pokemon: "
select starter in "Charmander (Fire)" "Bulbasaur (Grass/Poison)" "Squirtle (Water)" "quit"; do
    case $starter in
    "Charmander (Fire)") 
        echo -e "\033[30;41mCharmander\033[0m"
        echo -e "\033[5;34;43m(Fire)\033[0m"
        echo -e "\tThe flame that burns at the tip of its tail is an indication of its emotions. The flame wavers when Charmander is enjoying itself. If the Pokémon becomes enraged, the flame burns fiercely. It evolves into Charmeleon starting at level 16, which evolves into Charizard starting at level 36" 
        ;;

    "Bulbasaur (Grass/Poison)") 
        echo -e "\033[43;42mBulbasaur\033[0m"
        echo -e "\033[5;34;43m(Grass/Poison)\033[0m"
        echo -e "\tBulbasaur can be seen napping in bright sunlight. There is a seed on its back. By soaking up the sun's rays, the seed grows progressively larger. It evolves into Ivysaur starting at level 16, which evolves into Venusaur starting at level 32." 
        ;;

    "Squirtle (Water)") 
    	echo -e "\e[44mSquirtle\033[0m"
        echo -e "\033[5;34;43m(Water)\033[0m"
        echo -e "\tSquirtle's shell is not merely used for protection. The shell's rounded shape and the grooves on its surface help minimize resistance in water, enabling this Pokémon to swim at high speeds. It evolves into Wartortle starting at level 16, which evolves into Blastoise starting at level 36." 
        ;;

    "quit") 
        break 
        ;;

    *) 
        echo "Invalid option!" 
        ;;
    esac
done

# Input validation using loop, by specifying default value
read -p "Favorite Pokemon? [Charizard] " p
while [[ -z $p ]]; do
    p="Charizard"
done
echo "I love $p!"

read -p "Favorite Pokemon Move? [Hyper Beam] " m
while [[ -z $m ]]; do
    m="Hyper Beam"
done
echo "$m is a really powerful move!"

read -p "Favorite Pokemon Type? [DRAGON] " t
while [[ -z $t ]]; do
    t="DRAGON"
done
echo "$t types are the coolest!"




