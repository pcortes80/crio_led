#----------------------------------------------------------------------------
# Macros
#----------------------------------------------------------------------------

# Compiler to use
CC := gcc

#----------------------------------------------------------------------------
# Setting of target
#----------------------------------------------------------------------------

# Source file directories
SRCDIR := ./src

# Directory of executable
BINDIR := ./bin

LDFLAGS = -ldl
EXECUTABLE = crio
OBJECTS = crioLED.o NiFpga.o

# Include header file directories
INC := -I ./include

all: $(OBJECTS)
	$(CC) $(SRCDIR)/crioLED.o include/NiFpga.o $(LDFLAGS) -o $(EXECUTABLE)

crioLED.o:
	$(CC) -c $(SRCDIR)/crioLED.c -o $(SRCDIR)/crioLED.o

NiFpga.o:
	$(CC) -c include/NiFpga.c -o include/NiFpga.o

clean:
	rm -f $(EXECUTABLE) include/NiFpga.o $(SRCDIR)/crioLED.o
