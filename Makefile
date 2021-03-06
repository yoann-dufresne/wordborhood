CC = g++
CFLAGS = -std=c++11 -isystem -Wall

EXEC_NAME = wordborhood

OBJ_FILES = levenshtein.o automaton.o word_automaton.o counting.o

all : $(EXEC_NAME)

clean :
	rm $(EXEC_NAME) $(OBJ_FILES)

dula : $(OBJ_FILES) dula.o
	$(CC) -o $@ $(OBJ_FILES) dula.o

nula : $(OBJ_FILES) nula.o
	$(CC) -o $@ $(OBJ_FILES) nula.o

wordborhood : $(OBJ_FILES) wordborhood.o
	$(CC) -o $@ $(OBJ_FILES) wordborhood.o

%.o: %.cpp
	$(CC) $(CFLAGS) -O3 -o $@ -c $<

