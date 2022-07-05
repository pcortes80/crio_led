CC=gcc
LDFLAGS=-ldl
OBJECTS=Example.o NiFpga.o
EXECUTABLE=Example

all: $(EXECUTABLE)

#$(EXECUTABLE): $(OBJECTS)


crioLED.o: NiFpga_ExampleRSeries.h NiFpga.h

NiFpga.o: NiFpga.c NiFpga.h
	gcc -c src/crio/NiFpga.c -o NiFpga.o

clean:
	rm -f $(EXECUTABLE) $(OBJECTS)
