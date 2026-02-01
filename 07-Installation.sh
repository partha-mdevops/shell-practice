#! /bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "Please run the script with user access"
    exit 1
fi

echo "installing nginx"
dnf install nginx -y

if [ $? -ne 0 ]; then
  echo "Installing nginx is ----FAILURE"
else
  echo "Installing nginx is success"
  fi 

  if [ $? -ne 0 ]; then
  echo "Installing MYSQL is ----FAILURE"
else
  echo "Installing MYSQL is success"
  fi 

  dnf install nodejs -y

  if [ $? -ne 0 ]; then
  echo "Installing nodejs is ----FAILURE"
else
  echo "Installing nodejs is success"
  fi 