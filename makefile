all: README.md

README.md:
	echo "The Unix Workbench: Guessing Game Project" > README.md
	echo "This file was created at $$(date)" >> README.md
	echo "The file guessinggame.sh contains the following number of lines:" >> README.md
	wc -l guessinggame.sh | awk '{print $$1}'>> README.md

clean:
	rm README.md
