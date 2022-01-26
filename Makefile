CC=gcc
TARGET=main.out
FLAGS=-Wstring-compare -Wformat

all:
	mkdir build
	$(CC) -c -g libs/startswith.c -o build/startswith.o
	$(CC) -c -g main.c -o build/main.o
	$(CC) -o main.out build/main.o build/startswith.o
	rm -rf build

old:
	$(CC) main.c -o $(TARGET) $(FLAGS)


clean:
	rm $(TARGET)
run:
	./main.out test.sasm
test:
	$(CC) -c -g libs/startswith.c -o libs/startswith.o
	$(CC) -c -g tests/test.c -o tests/test.o
	$(CC) -o test.out tests/test.o libs/startswith.o
