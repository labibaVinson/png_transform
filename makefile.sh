CC=gcc
CFLAGS=-W -w -Wall -lpng -L$(LIBPNG_LIBDIR) -I$(LIBPNG_INCDIR)
std=c++98
LDFLAGS=-lpng -L$(LIBPNG_LIBDIR) -I$(LIBPNG_INCDIR)
EXEC=png_transform

LIBPNG_DIR=/usr/local/libpng
LIBPNG_INCDIR=$(LIBPNG_DIR)/include
LIBPNG_LIBDIR=$(LIBPNG_DIR)/lib

all: $(EXEC)

png_transform: png_transform.o
	$(CC) -o png_transform png_transform.o $(LDFLAGS)

png_transform.o: png_transform.c 
	$(CC) -o png_transform.o -c png_transform.c $(CFLAGS)

clean:
	rm -rf *.o

mrproper: clean
	rm -rf $(EXEC)
