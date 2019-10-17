# Basic function
# function greet {
#     echo "Hello function!"
# }

# echo "And now, a greeting!"
# greet

# Passing arguments into function
# function greet {
#     echo "Hi, $1"
# }

# echo "And now, a greeting!"
# greet stalker
# Notice parameter 'stalker' is passed into greet function as $1, number denoting first argument

# Multiple arguments
# function greet {
#     echo "Hi, $1, What a beautiful $2!"
# }

# echo "And now, a greeting!"
# greet secret-admirer Morning
# greet stalker Evening

# function numberthings {
#     i=1
#     for f in $@; do
#         echo $i: $f
#         ((i+=1))
#     done
# }

# numberthings $(ls)
# printf "\n-----------------------------------------------\n\n"
# numberthings $(ls -al)
# printf "\n-----------------------------------------------\n\n"
# numberthings teska bajey ko tauko ! dukha xa hajoor !!
