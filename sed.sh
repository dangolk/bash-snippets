# Following commands are equivalent:
sed 's/hello/world/' input.txt > output.txt
# sed 's/hello/world/' < input.txt > output.txt
# cat input.txt | sed 's/hello/world/' - > output.txt


# SED -> Stream Editor

# Use case of sed
# ./sed.sh /etc/passwd
# while IFS= read -r LINE; do
#     echo "$LINE" | sed 's/:/ | /g'
# done < $1
# here sed will replace every occurence of : with | line by line