# This is just for fun
echo -e "\033[5;31;40mERROR: \033[0m\033[31;40mSomething went wrong.\033[0m"

# Blue on Green
echo -e "\033[34;42mBlue on Green\033[0m"

# This is just for fun
echo -e "\033[5;31;40mERROR: \033[0m\033[31;40mSomething went wrong.\033[0m"

# White on Black
echo -e "\033[37;40mWhite on Black\033[0m"

# This is just for fun
echo -e "\033[5;31;40mERROR: \033[0m\033[31;40mSomething went wrong.\033[0m"

# Yellow on Green
echo -e "\033[43;42mYellow on Green\033[0m"

# This is just for fun
echo -e "\033[5;31;40mERROR: \033[0m\033[31;40mSomething went wrong.\033[0m"

# Black on Red
echo -e "\033[30;41mBlack on Red\033[0m"

# This is just for fun
echo -e "\033[5;31;40mERROR: \033[0m\033[31;40mSomething went wrong.\033[0m"

# Green on Black
echo -e "\033[32;40mGreen on Black\033[0m"

# This is just for fun
echo -e "\033[5;31;40mERROR: \033[0m\033[31;40mSomething went wrong.\033[0m"

# Green on Red
echo -e "\033[32;41mGreen on Red\033[0m"

# This is just for fun
echo -e "\033[5;31;40mERROR: \033[0m\033[31;40mSomething went wrong.\033[0m"

# Red on White
echo -e "\033[31;47mRed on White\033[0m"

# This is just for fun
echo -e "\033[5;31;40mERROR: \033[0m\033[31;40mSomething went wrong.\033[0m"

# Blue on Yellow
echo -e "\033[34;43mBlue on Yellow\033[0m"

# # Styled Text
# No Style        0
# Bold            1
# Low Intensity   2
# Underline       4
# Blinking        5
# Reverse         7
# Invisible       8

# Generate styled text in terminal combined with color.
# Use Case: Error warning alert message
echo -e "\033[5;31;40mERROR: \033[0m\033[31;40mSomething went wrong.\033[0m"
# will output Red Text on Black Background with blinking text for ERROR

# Making it more readable
flashred="\033[5;31;40m"
red="\033[31;40m"
none="\033[0m"
echo -e $flashred"ERROR: "$none$red"Something went wrong."$none

# Same result can be achieved with 'tput' command
flashred=$(tput setab 0; tput setaf 1; tput blink)
red=$(tput setab 0; tput setaf 1)
none=$(tput sgr0)
echo -e $flashred"ERROR: "$none$red"Something went wrong."$none