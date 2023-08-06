#!/bin/bash


json_file="preferances.json"
json_data=$(cat "$json_file")



package_manager=$(echo "$json_data" | grep -o '"packageManager" : "[^"]*' | sed 's/"packageManager" : "//')
typescript=$(echo "$json_data" | grep -o '"typescript": [^,]*' | awk -F ': ' '{print $2}')
type=$(echo "$json_data" | grep -o '"type": "[^"]*' | sed 's/"type": "//')
location=$(echo "$json_data" | grep -o '"location": "[^"]*' | sed 's/"location": "//')


echo "Package Manager: $package_manager"
echo "TypeScript: $typescript"
echo "Type: $type"
echo "Location: $location"
