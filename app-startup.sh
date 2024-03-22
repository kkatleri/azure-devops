#!/bin/bash

APP_NAME="todo-app-0.0.1-SNAPSHOT.jar"
PROCESS=$(ps -ef | grep java | grep $APP_NAME)

if [ -z "$PROCESS" ]; then
  echo "Spring Boot TODO application is not running."
else
  echo "Spring Boot application TODO is running."
  # Extract the PID
  PID=$(echo $PROCESS | awk '{ print $2 }')
  echo "Stopping the Spring Boot application TODO with PID: $PID"
  # Stop the application
  kill -9 $PID
  echo "Application stopped."
fi