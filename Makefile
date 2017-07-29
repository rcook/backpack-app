main/Main: hello.bkp
	stack exec -- ghc --backpack hello.bkp

.PHONY: clean
clean:
	rm -rf main