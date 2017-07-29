.PHONY: all
all: main/Main main/Main.hi main/Main.o regex/Regex.hi regex/Regex.o

ma%n/Main \
	ma%n/Main.hi \
	ma%n/Main.o \
	reg%x/Regex.hi \
	reg%x/Regex.o \
	: regex.bkp
	stack exec -- ghc --backpack $?

.PHONY: clean
clean:
	rm -rf main
	rm -rf regex
