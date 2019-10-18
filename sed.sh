# Use case of sed
# ./sed.sh /etc/passwd
while IFS= read -r LINE; do
    echo "$LINE" | sed 's/:/ | /g'
done < $1
# here sed will replace every occurence of : with | line by line