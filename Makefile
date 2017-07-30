.PHONY: all
all: \
	foo-indef/Foo.hi \
	foo-indef/Str.hi \
	foo-int/Str.hi \
	foo-int/Str.o \
	foo-string/Str.hi \
	foo-string/Str.o \
	main/Main.exe \
	main/Main.hi \
	main/Main.o

%oo-indef/Foo.hi \
%oo-indef/Str.hi \
%oo-int/Str.hi \
%oo-int/Str.o \
%oo-string/Str.hi \
%oo-string/Str.o \
%ain/Main.exe \
%ain/Main.hi \
%ain/Main.o: \
	foo.bkp
	stack exec -- ghc --backpack $?

.PHONY: clean
clean:
	rm -rf main
	rm -rf foo
