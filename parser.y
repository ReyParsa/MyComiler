%{
#include "common.h"
#include <stdio.h>
#include <stdlib.h>

extern int yylex();
extern int yyparse();
extern FILE* yyin;
void yyerror(const char* s);

// تابع کمکی برای پیدا کردن ماکزیمم در لیست
int find_max(int* list, int size) {
    int max = list[0];
    for (int i = 1; i < size; i++) {
        if (list[i] > max) max = list[i];
    }
    return max;
}
%}

// تعریف union برای انواع داده‌ها
%union {
    int num;        // برای اعداد
    List list;      // برای لیست‌ها
}

%token <num> NUMBER
%token <num> IDENTIFIER
%token <num> IS_EVEN FACTORIAL MAX_IN_LIST SUM_LIST AVERAGE_LIST IS_PRIME FIBONACCI
%token <num> MIN_IN_LIST REVERSE_STRING IS_IN_LIST CELSIUS_TO_FAHRENHEIT FAHRENHEIT_TO_CELSIUS
%token <num> CHAR_COUNT CONTAINS_SUBSTRING MAX_IN_MATRIX IS_PALINDROME TO_UPPERCASE TO_LOWERCASE
%token <num> UPPERCASE_COUNT LOWERCASE_COUNT SWAP_CASE BINARY_SEARCH SELECTION_SORT BUBBLE_SORT
%token <num> TO_BINARY BINARY_TO_DECIMAL REMOVE_EXTRA_SPACES COMBINATION UNIQUE_ELEMENTS GCD LCM
%token SEMICOLON

// تعریف نوع‌دهی برای غیرتوکن‌ها (مثلاً expression و list)
%type <num> expression
%type <list> list numbers

%%

program:
    | program statement SEMICOLON { printf("\n"); }
    ;

statement:
    IS_EVEN expression {
        printf("%s %d: %s\n", "is_even", $2, ($2 % 2 == 0) ? "true" : "false");
    }
    | FACTORIAL expression {
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
        List lst;
        lst.list = malloc(sizeof(int));
        lst.list[0] = $1;
        lst.size = 1;
        $$ = lst;
    }
    | numbers ',' NUMBER {
        $1.list = realloc($1.list, ($1.size + 1) * sizeof(int));
        $1.list[$1.size] = $3;
        $1.size++;
        $$ = $1;
    }
    ;

expression:
    NUMBER { $$ = $1; }
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