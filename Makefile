NAME = btree

INCLUDES = -I.

SOURCES = btree.c

TARGET = $(NAME).o

OBJECTS := $(SOURCES:.c=.o)

all : $(TARGET)

$(TARGET) : $(OBJECTS)
	@echo Compiling $@
	@$(CC) -c $(OBJECTS) -o $@

clean:
	@rm -rf $(NAME).o
