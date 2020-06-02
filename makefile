README.md: guessinggame.log
	echo "# Guessing Game" > README.md
	echo "## The Date and Time **make** was run:" >> README.md
	date >> README.md
	echo "## This script contains the following number of lines:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
