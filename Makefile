CC=g++
CFLAGS=-c

all: calcmake calclib.a

calcmake: main.o calclib.a
	$(CC) main.o calclib.a -o calcmake

main.o: main.cpp calculator.h
	$(CC) $(CFLAGS) main.cpp

calculator.o: calculator.cpp calculator.h
	$(CC) $(CFLAGS) calculator.cpp

calclib.a: calculator.o
	ar -rcs calclib.a calculator.o

.PHONY: clean

clean:
	rm -f *.o *.a calcmake