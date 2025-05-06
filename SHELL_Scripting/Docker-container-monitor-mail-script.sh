#! /bin/bash

exited_containers=$(docker ps -a | grep Exited | awk '{ print $1 }') 

if [ -z "$exited_containers" ] 
then
      echo "No exited containers found."
else
      echo "Exited containers:"
      echo "$exited_containers"

      echo "container "$exited_containers" are down" | mail -s "docker container alert" vicky.sankar1812@gmail.com
fi

#---------------------------------------------------------------------------------

#       To configure the mail service 

## install the mailutils and postfix 

      sudo apt install mailutils  ;  sudo apt install postfix 

## edit the Postfix configuration file 

       vi /etc/postfix/main.cf 

## add this lines 
       relayhost = [smtp.gmail.com]:587
       myhostname= your_hostname       ----> to find the hostname { hostname -f }

##  add these line at last of main.cf file 
     #Location of sasl_passwd we saved
      smtp_sasl_password_maps = hash:/etc/postfix/sasl/sasl_passwd

     #Enables SASL authentication for postfix
      smtp_sasl_auth_enable = yes
      smtp_tls_security_level = encrypt

     #Disallow methods that allow anonymous authentication
      smtp_sasl_security_options = noanonymous

## create a directory under  /etc/postfix
       mkdir sasl   ---> in that create a file --> touch sasl_password

## Add this line in that sasl_password
       [smtp.gmail.com]:587 email@gmail.com:password       

   # replace your email and create a app password in google account (to create a app password need to enable a 2 factor authentication in your mail)
     gmail --> manage google account --> security --> enable 2 factor authentication --> search app password --> app name  'smtp' --> generate password

    # add that password in this ' [smtp.gmail.com]:587 email@gmail.com:password '

## run this command to create a .db file 
        postmap /etc/postfix/sasl/sasl_password
	
	sudo systemctl restart postfix

#---------------------------------------------------------------------------









