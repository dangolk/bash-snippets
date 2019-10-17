## SOME EXAMPLES
# echo '{ "Version Number": "1.2.3" }' | jq '."Version Number"'

# echo '[ {"id": 1}, {"id": 2} ]' | jq '.[].id'

# echo '{ "a": 1, "b": 2 }' | jq 'keys | .[]'

# echo '[1,2,3]' | jq 'length'

## ANOTHER EXAMPLE
# printf "\n"
# jq '.' package.json
# printf "\n"

## ANOTHER EXAMPLE
# printf "\n"
# JsonData='[
#     {"Book":"PHP 7"},
#     {"Publication":"Apress"},
#     {"Book":"React 16 Essentials"},
#     {"Publication":"Packt"} ]'
# printf "\n"
# echo $JsonData
# printf "\n"
# echo "${JsonData}"
# printf "\n"
# echo "${JsonData}" | jq '.'
# printf "\n"

## ANOTHER EXAMPLE
# Students='[
#     {
#     "roll": 3,
#     "name": "Micheal",
#     "batch": 29,
#     "department": "CSE"
#     },
#     {
#     "roll": 55,
#     "name": "Lisa",
#     "batch": 34,
#     "department": "BBA"
#     },
#     {
#     "roll": 12,
#     "name": "John",
#     "batch": 22,
#     "department": "English"
#     }
# ]'
# printf "\nDepartments:\n"
# echo "${Students}" | jq '.[] | .department' 
# printf "\nNames:\n"
# echo "${Students}" | jq '.[] | .name' 
# printf "\nRoll Numbers:\n"
# echo "${Students}" | jq '.[] | .roll' 
# printf "\nBatch Numbers:\n"
# echo "${Students}" | jq '.[] | .batch' 
# printf "\n"