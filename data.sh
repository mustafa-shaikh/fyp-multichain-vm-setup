#!/bin/bash 

#cat collection.json | jq '.[1]'
# a= jq '. | length' collection.json



#working code
declare -i count=0

jq -c '.[]' collection.json | while read i; do
    count+=1
    multichain-cli chain1 publish "symptoms" $count '{"json":'$i'}'
done