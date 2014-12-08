test: test.c
	gcc -o test test.c
	cp test.html $CIRCLE_ARTIFACTS