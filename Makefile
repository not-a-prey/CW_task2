CC=g++
CFLAGS=-c -Wall
DEPS = calculator.h
TARGET = calcmake
LIB = calclib.a

all: $(TARGET) $(LIB)

$(TARGET): main.o $(LIB)
	$(CC) main.o $(LIB) -o $(TARGET)

main.o: main.cpp $(DEPS)
	$(CC) $(CFLAGS) main.cpp

calculator.o: calculator.cpp $(DEPS)
	$(CC) $(CFLAGS) calculator.cpp

$(LIB): calculator.o
	ar -rcs $(LIB) calculator.o

.PHONY: clean

clean:
	rm -f *.o *.a calcmake
