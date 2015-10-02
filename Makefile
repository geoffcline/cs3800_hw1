all: program2 dotprod2

program2: program2.o
	gcc -D_REENTRANT -o program2 program2.o -lpthread -lm

program2.o: program2.c
	gcc -c program2.c

dotprod2: dotprod2.o
	gcc -D_REENTRANT -o dotprod2 dotprod2.o -lpthread -lm

dotprod2.o: dotprod2.c
	gcc -c dotprod2.c

clean:
	rm -f *.o program2 dotprod2
