README.md: guessinggame.sh
	echo "# Guessing Game" > README.md
	echo >> README.md
	echo "Date and time: $$(date)" >> README.md
	echo "Lines of code in guessinggame.sh: $$(cat guessinggame.sh | wc -l)" >> README.md

.PHONY: clean
clean:
	rm -f README.md