# # Basic usage of 'heredoc'
# cat << EOF
# Working dir -> "$PWD"
# EOF

# # Equivalent echo command below:
# echo 'working dir ->' $PWD


## ANOTHER EXAMPLE
sql=$(cat <<EOF
SELECT foo, bar FROM db
WHERE foo='baz'
EOF
)

echo $sql