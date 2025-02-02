%{
#include "parser.tab.h"  // ضروری برای ارتباط با Bison
#include <stdlib.h>      // برای توابعی مثل atoi
#include <string.h>      // برای توابع رشته‌ای (اگر نیاز است)

// تعریف YYSTYPE مطابق با %union در parser.y
extern YYSTYPE yylval;
%}

%%

"is_even"               { return IS_EVEN; }
"factorial"             { return FACTORIAL; }
"max_in_list"           { return MAX_IN_LIST; }
"sum_list"              { return SUM_LIST; }
"average_list"          { return AVERAGE_LIST; }
"is_prime"              { return IS_PRIME; }
"fibonacci"             { return FIBONACCI; }
"min_in_list"           { return MIN_IN_LIST; }
"reverse_string"        { return REVERSE_STRING; }
"is_in_list"            { return IS_IN_LIST; }
"celsius_to_fahrenheit" { return CELSIUS_TO_FAHRENHEIT; }
"fahrenheit_to_celsius" { return FAHRENHEIT_TO_CELSIUS; }
"char_count"            { return CHAR_COUNT; }
"contains_substring"    { return CONTAINS_SUBSTRING; }
"max_in_matrix"         { return MAX_IN_MATRIX; }
"is_palindrome"         { return IS_PALINDROME; }
"to_uppercase"          { return TO_UPPERCASE; }
"to_lowercase"          { return TO_LOWERCASE; }
"uppercase_count"       { return UPPERCASE_COUNT; }
"lowercase_count"       { return LOWERCASE_COUNT; }
"swap_case"             { return SWAP_CASE; }
"binary_search"         { return BINARY_SEARCH; }
"selection_sort"        { return SELECTION_SORT; }
"bubble_sort"           { return BUBBLE_SORT; }
"to_binary"             { return TO_BINARY; }
"binary_to_decimal"     { return BINARY_TO_DECIMAL; }
"remove_extra_spaces"   { return REMOVE_EXTRA_SPACES; }
"combination"           { return COMBINATION; }
"unique_elements"       { return UNIQUE_ELEMENTS; }
"gcd"                   { return GCD; }
"lcm"                   { return LCM; }

[a-zA-Z][a-zA-Z0-9]*    { 
    // اگر نیاز به ذخیره شناسه دارید:
    // yylval.str = strdup(yytext);
    return IDENTIFIER; 
}

[0-9]+                  { 
    yylval.num = atoi(yytext); // مقداردهی به قسمت num از union
    return NUMBER; 
}

";"                     { return SEMICOLON; }
"["                     { return '['; }
"]"                     { return ']'; }
","                     { return ','; }
[ \t\n]                 { /* نادیده گرفتن فاصله، تب و خط جدید */ }
.                       { printf("Invalid Character: %s\n", yytext); }

%%

// تابع ضروری برای جلوگیری از خطای لینکر
int yywrap() {
    return 1;
}