%{
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

extern int yylex();
extern char* yytext;
void yyerror(const char *s);
%}

%token IDENTIFIER NUMBER IS_EVEN FACTORIAL MAX_IN_LIST SUM_LIST AVERAGE_LIST IS_PRIME FIBONACCI
%token MIN_IN_LIST REVERSE_STRING IS_IN_LIST CELSIUS_TO_FAHRENHEIT FAHRENHEIT_TO_CELSIUS CHAR_COUNT
%token CONTAINS_SUBSTRING MAX_IN_MATRIX IS_PALINDROME TO_UPPERCASE TO_LOWERCASE UPPERCASE_COUNT LOWERCASE_COUNT
%token SWAP_CASE BINARY_SEARCH SELECTION_SORT BUBBLE_SORT TO_BINARY BINARY_TO_DECIMAL REMOVE_EXTRA_SPACES COMBINATION
%token UNIQUE_ELEMENTS GCD LCM SEMICOLON

%%

program:
    program statement
    | /* empty */
    ;

statement:
    IS_EVEN expression SEMICOLON { printf("Is even: %d\n", $2 % 2 == 0); }
    | FACTORIAL expression SEMICOLON { 
        int result = 1;
        for (int i = 1; i <= $2; ++i) result *= i;
        printf("Factorial: %d\n", result); 
    }
    | MAX_IN_LIST expression_list SEMICOLON { /* code to find max in list */ }
    | SUM_LIST expression_list SEMICOLON { /* code to sum list */ }
    | AVERAGE_LIST expression_list SEMICOLON { /* code to average list */ }
    | IS_PRIME expression SEMICOLON { 
        int flag = 1;
        for (int i = 2; i <= $2/2; ++i) {
            if ($2 % i == 0) {
                flag = 0;
                break;
            }
        }
        printf("Is prime: %d\n", flag); 
    }
    | FIBONACCI expression SEMICOLON { 
        int a = 0, b = 1, temp, i;
        for (i = 1; i < $2; ++i) {
            temp = a + b;
            a = b;
            b = temp;
        }
        printf("Fibonacci: %d\n", a); 
    }
    /* more function definitions */
    ;

expression:
    NUMBER { $$ = atoi(yytext); }
    | IDENTIFIER { /* handling identifiers */ }
    ;

expression_list:
    expression { /* start list with an expression */ }
    | expression_list ',' expression { /* add expressions to the list */ }
    ;

%%

void yyerror(const char *s) {
    fprintf(stderr, "Error: %s\n", s);
}
