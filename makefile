CC=g++
CFLAGS1=-Wl,-export-dynamic -o Flags1
CFLAGS2=-o Flags2.s -masm=intel -S
#CFLAGS3=-o Flags3.s -S -masm=intel -x c++
#CFLAGS4=-g -o Flags4 -masm=intel -x c++
CWARNINGS=
LIBS=

SOURCES=main.cpp
OBJECTS=$(SOURCES:.cpp=.o)

all:
	$(CC) $(CFLAGS1) $(SOURCES) $(CLIBS) $(CINCLUDES)
	$(CC) $(CFLAGS2) $(SOURCES) $(CLIBS) $(CINCLUDES)
	#$(CC) $(CFLAGS3) $(SOURCES) $(CLIBS) $(CINCLUDES)
	#$(CC) $(CFLAGS4) $(SOURCES) $(CLIBS) $(CINCLUDES)

clean:
	-rm -f $(EXES) $(OBJECTS) *~ *.s Flags1 Flags4