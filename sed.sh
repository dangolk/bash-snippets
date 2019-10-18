# SED -> Stream Editor

## Following commands are equivalent:
# sed 's/hello/world/' < input.txt > output.txt
# cat input.txt | sed 's/hello/world/' - > output.txt
# sed 's/hello/world/' input.txt > output.txt
## Inside input.txt, replace every occurence of hello with world 
# then save the new output to output.txt


# below variation simply concats new output to the end
# sed 's/hello/worlD/' input.txt >> input.txt

# Replace nth occurence of a pattern in a line
# sed 's/hello/world/5' input.txt
# will replace 5th occurence of 'hello' inside input.txt with 'world'

# sed 's/hello/world/g' input.txt
# replace all occurences of 'hello' with 'world'

# sed 's/hello/world/3g' input.txt
# replace all occurences of 'hello' with 'world' starting from 3rd occurence

# Parenthesize first character of each word
# echo "Welcome To The Geek Stuff" | sed 's/\(\b[A-Z]\)/\(\1\)/g'
# Output: (W)elcome (T)o (T)he (G)eek (S)tuff

# Another variation using user input
# read -p "Tell me a good quote: " quote
# echo $quote | sed 's/\(\b[A-Z]\)/\(\1\)/g'
# Life Is What You Make Of It
# Life is what you make of it

# Another use case of sed3
# ./sed.sh /etc/passwd
# while IFS= read -r LINE; do
#     echo "$LINE" | sed 's/:/ | /g'
# done < $1
# here, sed will replace every occurence of : with | line by line

# Specific line number string replacement
# sed '3 s/hello/world' input.txt
# Replace all occurences of 'hello' with 'world' only on line 3

# Support for spaces (whitespaces)
# sed -e "1 s/hello\sworld/boo/" input.txt
# in line number 1: replace every occurence of 'hello world' [hello\sworld] with 'boo'

# Replacing string on a range of lines
# sed -e "1,3 s/hello\sworld/boo/" input.txt

# below variation will apply pattern replacement one lines 10 through last line ($) in file 
# sed -e "10,$ s/hello\sworld/boo/" input.txt

# Delete specific lines
sed '5d' input.txt
# will delete 5th line completely

# Will delete last line
sed '$d' input.txt

# will delete all lines from line 15 to end of file
sed '15,$d' input.txt

# will delete lines 6 through 14 in the input.txt file
sed '6,14d' input.txt

# Delete lines where specified pattern matches
sed '/textToDelete/d' input.txt