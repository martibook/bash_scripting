#! /bin/bash

NEW_LINE=$'\n'
read -p "input a number between 0 to 100:$NEW_LINE > " NUM

if [ $NUM -gt 50 ]
then
  echo ' < the number you gave is greater than 50'
  if (( $NUM % 2 == 0 ))
  then
    echo ' < and the number you gave is an even number'
  else
    echo ' < and the number you gave is an odd number'
  fi
else
  echo ' < the number you gave is less or equal than 50'
  if (( $NUM % 2 == 0 ))
  then
    echo ' < and the number you gave is an even number'
  else
    echo ' < and the number you gave is an odd number'
  fi
fi
