#!/bin/bash

#Script should be execute with sudo/root access.
if [[ "${UID}" -ne 0 ]]
then
echo "Please run with sudo or root"
exit 1
fi

#User should provide atleast one argument  as username else guide him 

if [[ "${#}" -lt 1 ]]
then
echo "Usage : ${0} USER_NAME [COMMENT]..."
echo "Create a user with name USER_NAME and comment field of comment"
exit 1
fi

# Store 1st argument as user name

USER_NAME="${1}"
echo $USER_NAME

#In case of more than one argument, store it as a account comments

shift
COMMENT="${@}"
echo $COMMENT

# Create a password 

PASSWORD=$(date +%s%n)
echo $PASSWORD

# Create the User

useradd -c "${COMMENT}" -m $USER_NAME

# check if user is successfully created or not 
if [[ $? -ne 0 ]]
then 
echo "Account could not be created"
exit 1
fi

#set the password for the user.
echo "${USER_NAME}:${PASSWORD}" | chpasswd

#Check is password is successfuly set or not 
if [[ $? -ne 0 ]]
then 
echo "password could not be set"
exit 1
fi

#Force password change on first login 
passwd -e $USER_NAME

#Display the username, password, and the host where the user was created.
echo
echo "Username : $USER_NAME"
echo
echo "Password : $PASSWORD"
echo
echo "Hostname : $(hostname)"

