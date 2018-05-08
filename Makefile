# tools
CC := gcc-3.3
RM := rm -f

# flags
CFLAGS := -ggdb
LDFLAGS :=
LDLIBS :=

# sources
sources := exploit1.c exploit2.c exploit3.c exploit4.c
targets := $(sources:.c=)

# gmake magic
.PHONY: default all clean

#targets
default: all
all: $(targets)

clean:
	$(RM) $(targets) $(sources:.c=.o)

#dependencies
$(sources:.c=.o): shellcode.h
