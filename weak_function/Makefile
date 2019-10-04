# make        # compile all binary
# make clean  # remove ALL binaries and objects

.PHONY = all clean

CC = gcc                        # compiler to use

SRCS := weak.c add.c add_weak.c
BINS := test_weak test

all: $(BINS)

test_weak: weak.o add_weak.o
	@echo "Checking.."
	$(CC) weak.o add_weak.o -o  test_weak

test: weak.o add_weak.o add.o
	@echo "Checking.."
	$(CC) weak.o add_weak.o add.o -o  test

weak.o: weak.c
	@echo "weak Creating object.."
	$(CC) -c weak.c

add.o: add.c
	@echo "add Creating object.."
	$(CC) -c add.c

add_weak.o: add_weak.c
	@echo "add_weak Creating object.."
	$(CC) -c add_weak.c

clean:
	@echo "Cleaning up..."
	rm -rvf add.o add_weak.o weak.o test_weak test 

