#! /bin/bash

Bucket_name=main.elitecorpusa.in 
Folder_files=C:/Users/Administrator/Downloads/Kearney_JSON
S3_Folder=Kearney

for file in "$Folder_files"/*; do

    aws s3 cp "$file"  "s3://"$Bucket_name"/"$S3_Folder"/$(basename "$file")" --acl public-read     ## '--acl public-read' it make the object publicly accessible
   
   # S3 link will be created in two type of URLs,According to Bucket name which contain 'with dot. or without dot.'

    FILE_URL="https://"$Bucket_name".s3.amazonaws.com/"$S3_Folder"/$(basename "$file")"     # URL when bucket name without any dot. 
    FILE_URL="https://s3.amazonaws.com/"$Bucket_name"/"$S3_Folder"/$(basename "$file")"     # URL when bucket name contain a dot. 

    echo "$FILE_URL" >> C:/Users/Administrator/Documents/S3_URLs

done


#######  run a script in "Git bash" in local and need to install "aws CLI" and make "aws configure"

##  $(basename "$file")   basename is used to print only the exact file name, not a full folder path.

###  "$Folder_files"/*   it allows the all type of files in that directory