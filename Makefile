include common.mk

OBJ_FILES = masterserver.o logging.o
PROGRAM = masterserver

.PHONY: all clean install masterserver uninstall

all: masterserver 
.SUFFIXES = .c .o

.c.o:
	$(CC) -c $< -o $@ $(CFLAGS_MAIN) 

masterserver.o: masterserver.c masterserver.h

logging.o: logging.c logging.h

masterserver: $(OBJ_FILES)
	$(CC) -o $@ $(OBJ_FILES) $(LDFLAGS) $(CFLAGS_MAIN)

clean:
	@echo "===> CLEAN"
	rm -Rf *.o masterserver

