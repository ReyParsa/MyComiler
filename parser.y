%{
#include <stdio.h>
#include <stdlib.h>

extern int yylex();
extern int yyparse();
extern FILE* yyin;
void yyerror(const char* s);

// برای توابعی که لیست ورودی می‌گیرند (مثلاً max_in_list)
int find_max(int* list, int size) {
    int max = list[0];
    for (int i = 1; i < size; i++) {
        if (list[i] > max) max = list[i];
    }
    return max;
}

%}

%token NUMBER IDENTIFIER SEMICOLON
%token IS_EVEN FACTORIAL MAX_IN_LIST SUM_LIST AVERAGE_LIST IS_PRIME FIBONACCI
%token MIN_IN_LIST REVERSE_STRING IS_IN_LIST CELSIUS_TO_FAHRENHEIT FAHRENHEIT_TO_CELSIUS
%token CHAR_COUNT CONTAINS_SUBSTRING MAX_IN_MATRIX IS_PALINDROME TO_UPPERCASE TO_LOWERCASE
%token UPPERCASE_COUNT LOWERCASE_COUNT SWAP_CASE BINARY_SEARCH SELECTION_SORT BUBBLE_SORT
%token TO_BINARY BINARY_TO_DECIMAL REMOVE_EXTRA_SPACES COMBINATION UNIQUE_ELEMENTS GCD LCM

%%

program:
    | program statement SEMICOLON { printf("\n"); }
    ;

statement:
    IS_EVEN NUMBER {
        printf("%s %d: %s\n", "is_even", $2, ($2 % 2 == 0) ? "true" : "false");
    }
    | FACTORIAL NUMBER {
        int result = 1;
        for (int i = 1; i <= $2; i++) result *= i;
        printf("%s %d: %d\n", "factorial", $2, result);
    }
    | MAX_IN_LIST list {
        printf("max_in_list: %d\n", find_max($2.list, $2.size));
        free($2.list); // آزادسازی حافظه
    }
    | SUM_LIST list {
        int sum = 0;
        for (int i = 0; i < $2.size; i++) sum += $2.list[i];
        printf("sum_list: %d\n", sum);
        free($2.list);
    }
    ;

list:
    '[' numbers ']' { $$ = $2; }
    ;

numbers:
    NUMBER { 
        int* arr = malloc(sizeof(int));
        arr[0] = $1;
        $$.list = arr;
        $$.size = 1;
    }
    | numbers ',' NUMBER {
        $1.list = realloc($1.list, ($1.size + 1) * sizeof(int));
        $1.list[$1.size] = $3;
        $$.size = $1.size + 1;
        $$.list = $1.list;
    }
    ;

%%

void yyerror(const char* s) {
    fprintf(stderr, "Error: %s\n", s);
}

int main() {
    yyin = stdin;
    yyparse();
    return 0;
}