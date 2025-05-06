#! /bin/bash

# TOPICS
#---------------------------------------------

# 1.HELLO BSAH SCRIPTING
#
echo "hellow world test script"
#---------------------------------------------

# 2. REDIRECT OUTPUT TO FILES

echo hellow world test script to my file > file name
#using this > it create a file and replace the content 

echo hellow world test script to my file >> file name
#using >> it will also create a file but it not replace the content it will added the new contant one by one

ls -ltr > file.txt 2>&1   # using '2>&1' it will send the error output to the file {in this case 'right and error' both output will printed in same file}
ls t+ltr > file.txt 2>&1  #  wrong cmd

ls t+ltr >& file.txt  # it is a Shortcut
ls -j >> file.txt 2>&1  # in >> this way only work.
#-------------------------------------------------

# 3. COMMENTS MULTI LINES

: '
i am commenting multiple liness
i am commenting multiple liness
i am commenting multiple liness
i am commenting multiple liness
i am commenting multiple liness
i am commenting multiple liness
i am commenting multiple liness'

#using this way we can comment multiple lines (it only works in shell scripting file)
#-----------------------------------------------------

# 4. HEREDOC DELIMITER  (it will show the given text and command output content in display) {same as 'echo' but Heredoc will handile multiple lines}

cat << EOF
The current working directory is: $PWD
You are logged in as: $(whoami)
EOF

#EOF is a(heredoc name) we can give any name 
#--------------------------------------------------------------

# 5. CONDITIONAL STATEMENTS



























