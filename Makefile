all:
	gcc test.c -o test
	
test: all
	echo 2 | ./test | (grep 4 && echo success) || (echo failed && exit 1)
	
clean:
	rm -f ./test
  
