CC= clang
CFLAGS= 
LDFLAGS=
OBJFILES= driver.o file1.o file2.o
TARGET= makefileAssignment


all:$(TARGET)

$(OBJFILES): headers.h

$(TARGET): $(OBJFILES)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJFILES) $(LDFLAGS)

.PHONY: clean
clean:
	rm $(OBJFILES) $(TARGET)