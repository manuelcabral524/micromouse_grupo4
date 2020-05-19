# Makefile

.PHONY: default
default: executavel

# É criado um ficheiro executável que por sua vez precisa de dois ficheiro
# moving_in_screen e o reading_a_file
executavel: moving_in_screen.o reading_a_file.o
  # São compilados os ficherios main.c  oving_in_screen e o reading_a_file
	gcc -o  executavel main.c moving_in_screen.o reading_a_file.o

# criado os ficheiros .o que são chamados pelo executável
moving_in_screen.o:
	gcc -c moving_in_screen.c
reading_a_file.o:
	gcc  -c reading_a_file.c

clean:
	rm -f moving_in_screen.o reading_a_file.o # apagar os ficheiros criados, antes de fazer o make vai.

# O vai foi para demostrar o quão pode ser útil esse filcheiro.
# Para executar o ficheiro basta escrever make vai .
vai:
	./executavel