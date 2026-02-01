#! /bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "Please run the script with user access"
    exit 1
fi

VALIDATE (){
if [ $1 -ne 0 ]; then
      echo "$2 is ----FAILURE"
    else
        echo c$2 is success"
  fi 
}
dnf install nginx -y
VALIDATE $? "Installing nginx" 

dnf install mysql -y
VALIDATE $? "Ïnstalling mysql"

dnf install nodejs -y
VALIDATE $? "Installing nodejs"