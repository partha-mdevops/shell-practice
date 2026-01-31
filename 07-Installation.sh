#! /bin/bash

USERID=$(id -u)

if [$USERID -ne 0 ]; then

echo "Please run the script with user access"
fi

echo "installing nginx"

dnf install nginx -y
