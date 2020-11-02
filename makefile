all: README.md

README.md: guessinggame.sh
	echo "**The Unix Workbench Assignment**\n" > README.md
	echo "**Guessing game**\n" >> README.md
#	touch README.md
	echo "**Title:** Assignment: Bash, Make, Git and GitHub\n" >> README.md
	echo "**Date of makefile:** " >> README.md
	stat makefile >> README.md
	echo -e "\n" >> README.md
	echo "**Number of lines:** " >> README.md
	cat guessinggame.sh | wc -l >> README.md 
clean: 
	rm README.md
