#!/bin/bash

declare -i numAmount=0
declare -i currentNumber
declare -i totalNumAmount
declare -i highestNumber
declare -i lowestNumber
declare -i total=0
declare average

let highestNumber=0
let lowestNumber=100

echo "how many scores:"
read totalNumAmount

while [ $numAmount -lt $totalNumAmount ]
do
      echo "please enter a score"
      read currentNumber


      let total=$total+$currentNumber


      if [ $currentNumber -gt $highestNumber ]
        then
            let highestNumber=$currentNumber
      fi

      if [ $currentNumber -lt $lowestNumber ]
        then
            let lowestNumber=$currentNumber
      fi


      let numAmount=$numAmount+1
done



echo "the total score is $total"

let average=$total/$numAmount

echo "the average score is $average"

echo "the lowest score is: $lowestNumber"

echo "the highest score is: $highestNumber"
