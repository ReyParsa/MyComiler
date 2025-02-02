all: my_language

my_language: lex.yy.c parser.tab.c main.c
	gcc -o my_language lex.yy.c parser.tab.c main.c -ll -lfl

lex.yy.c: scanner.l
	flex scanner.l

parser.tab.c: parser.y
	bison -d parser.y

clean:
	rm -f my_language lex.yy.c parser.tab.c parser.tab.h
