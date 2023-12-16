CC=gcc
LIBS=-lncurses
CFLAGS=-I.
OBJ_DIR=obj
SRC_DIR=src

all: $(OBJ_DIR)/typemania.o
	$(CC) $(OBJ_DIR)/typemania.o $(LIBS) -o typemania

$(OBJ_DIR)/typemania.o: $(SRC_DIR)/typemania.c
	$(CC) -c $(SRC_DIR)/typemania.c -o $(OBJ_DIR)/typemania.o

.PHONY: clean

clean:
	rm -f $(OBJ_DIR)/*
	rm -f typemania
