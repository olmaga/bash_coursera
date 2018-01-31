all: add_title add_date add_lines

add_title:
	echo "GuessingGame rocks!" > README.md

add_date:
	echo "" >> README.md
	date >> README.md

add_lines:
	echo "" >> README.md
	wc -l < guessinggame.sh | xargs >> README.md

clean:
	rm README.md