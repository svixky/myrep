#! /bin/bash

#!/bin/bash

# Define variables
BUCKET_NAME=$1             ###  '$1' it will need to enter a name when you run the script 
REGION=$2

# Check if bucket name is provided or not
if [ -z "$BUCKET_NAME" ] || [ -z "$REGION" ]; then
    echo "Usage: $0 <bucket-name> <region>"
    exit 1
fi

# Create S3 bucket
aws s3api create-bucket --bucket "$BUCKET_NAME" --region "$REGION" --create-bucket-configuration LocationConstraint="$REGION"

# Enable public access
aws s3api put-bucket-policy --bucket "$BUCKET_NAME" --policy '{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": "*",
      "Action": "s3:GetObject",
      "Resource": "arn:aws:s3:::'"$BUCKET_NAME"'/*"
    }
  ]
}'

# Disable Block Public Access settings
aws s3api put-public-access-block --bucket "$BUCKET_NAME" --block-public-acls false --ignore-public-acls false --block-public-policy false --ignore-public-policy false

echo "Bucket '$BUCKET_NAME' created and set to public access."
------------------------------------------------------------------------------

 It is a SCRIPT INPUT concept: 

######  $1 $2 ....etc are used to refer to positional parameters (add the input of script using $ parameter). 

      example:  " ./example.sh arg1 arg2 "   
      
       { $0=example.sh ; $1=arg1 ; $2=arg2 }

##  Better we can use a 'read -p'  it will make a script more intractive and easy.

  read -p "Enter the bucket name: " BUCKET_NAME
  read -p "Enter the region: " REGION