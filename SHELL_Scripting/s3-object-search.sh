#! /bin/bash

read -p "Enter the object name or pattern to search for: " SEARCH_OBJECT
buckets=$(aws s3api list-buckets --query "Buckets[].Name" --output text)
 
for BUCKET in $buckets; do
 # echo "Searching in bucket:" "$BUCKET"
  MATCHES=$(aws s3 ls "s3://$BUCKET/" --recursive | grep "$SEARCH_OBJECT")

  if [ -n "$MATCHES" ]; then

   echo obects find in bucket "$BUCKET"
   echo "$MATCHES"
      break
  else 

   echo "no object will find"

  fi
done    

