all: add_title add_date add_lines

add_title:
	echo "GuessingGame rocks!" > README.md

add_date:
	date >> ReadMe.md

add_lines:
	wc -l < guessinggame.sh | xargs >> README.md

clean:
	rm README.md