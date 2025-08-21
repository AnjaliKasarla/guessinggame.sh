# Makefile for Guessing Game project

all: README.md

README.md: guessinggame.sh
	@echo "# Guessing Game Project" > README.md
	@echo "" >> README.md
	@echo "This project contains a simple Bash guessing game." >> README.md
	@echo "" >> README.md
	@echo "## Date and time when make was run" >> README.md
	@date >> README.md
	@echo "" >> README.md
	@echo "## Number of lines of code in guessinggame.sh" >> README.md
	@wc -l < guessinggame.sh >> README.md
	@echo "" >> README.md
	@echo "## How to run" >> README.md
	@echo "\`\`\`bash" >> README.md
	@echo "bash guessinggame.sh" >> README.md
	@echo "\`\`\`" >> README.md

.PHONY: all clean

clean:
	rm -f README.md
