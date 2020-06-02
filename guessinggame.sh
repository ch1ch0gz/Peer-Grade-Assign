#!/bin/bash

#Function that return the number of files on the current directory
function numFileDir  {
	local numFiles
	numFiles=`ls | wc -l`
	echo $numFiles
}


#While loop until answer is correct - contains inside if statement that checks answer is equal number of files in current directory
i=0
while [[ i -eq 0 ]]
do
#Read user input
  echo "How many file do you think are in the current directory?"
  read filesNumGuess

  if [[ ${filesNumGuess} -eq $(numFileDir) ]]
   then
    echo "You are right, that´s the correct number of files; ${filesNumGuess} in total."
    
#Log sucessful result for makefile file dependency; first initialise, second input make command output into log file
    echo "Sucess" > guessinggame.log
    make README.md >> guessinggame.log
 
    #Exit Loop
    i=1
  elif [[ ${filesNumGuess} -gt $(numFileDir) ]]
  then
    echo "Almost! Try again, the number was too high."
  else 
    echo "Almost! Try again, the number was too low."
  fi
done
 
