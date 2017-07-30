.PHONY: all
all: \
	bar/Str.hi \
	bar/Str.o \
	foo/Foo.hi \
	foo/Str.hi \
	main/Main.exe \
	main/Main.hi \
	main/Main.o \
	qux/Str.hi \
	qux/Str.o

ba%/Str.hi \
	ba%/Str.o \
	fo%/Foo.hi \
	fo%/Str.hi \
	mai%/Main.exe \
	mai%/Main.hi \
	mai%/Main.o \
	qu%/Str.hi \
	qu%/Str.o: \
	foo.bkp
	stack exec -- ghc --backpack $?

.PHONY: clean
clean:
	rm -rf main
	rm -rf foo
