/* A Bison parser, made by GNU Bison 3.8.2.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2021 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <https://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* DO NOT RELY ON FEATURES THAT ARE NOT DOCUMENTED in the manual,
   especially those whose name start with YY_ or yy_.  They are
   private implementation details that can be changed or removed.  */

#ifndef YY_YY_PARSER_TAB_H_INCLUDED
# define YY_YY_PARSER_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token kinds.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    YYEMPTY = -2,
    YYEOF = 0,                     /* "end of file"  */
    YYerror = 256,                 /* error  */
    YYUNDEF = 257,                 /* "invalid token"  */
    IDENTIFIER = 258,              /* IDENTIFIER  */
    NUMBER = 259,                  /* NUMBER  */
    IS_EVEN = 260,                 /* IS_EVEN  */
    FACTORIAL = 261,               /* FACTORIAL  */
    MAX_IN_LIST = 262,             /* MAX_IN_LIST  */
    SUM_LIST = 263,                /* SUM_LIST  */
    AVERAGE_LIST = 264,            /* AVERAGE_LIST  */
    IS_PRIME = 265,                /* IS_PRIME  */
    FIBONACCI = 266,               /* FIBONACCI  */
    MIN_IN_LIST = 267,             /* MIN_IN_LIST  */
    REVERSE_STRING = 268,          /* REVERSE_STRING  */
    IS_IN_LIST = 269,              /* IS_IN_LIST  */
    CELSIUS_TO_FAHRENHEIT = 270,   /* CELSIUS_TO_FAHRENHEIT  */
    FAHRENHEIT_TO_CELSIUS = 271,   /* FAHRENHEIT_TO_CELSIUS  */
    CHAR_COUNT = 272,              /* CHAR_COUNT  */
    CONTAINS_SUBSTRING = 273,      /* CONTAINS_SUBSTRING  */
    MAX_IN_MATRIX = 274,           /* MAX_IN_MATRIX  */
    IS_PALINDROME = 275,           /* IS_PALINDROME  */
    TO_UPPERCASE = 276,            /* TO_UPPERCASE  */
    TO_LOWERCASE = 277,            /* TO_LOWERCASE  */
    UPPERCASE_COUNT = 278,         /* UPPERCASE_COUNT  */
    LOWERCASE_COUNT = 279,         /* LOWERCASE_COUNT  */
    SWAP_CASE = 280,               /* SWAP_CASE  */
    BINARY_SEARCH = 281,           /* BINARY_SEARCH  */
    SELECTION_SORT = 282,          /* SELECTION_SORT  */
    BUBBLE_SORT = 283,             /* BUBBLE_SORT  */
    TO_BINARY = 284,               /* TO_BINARY  */
    BINARY_TO_DECIMAL = 285,       /* BINARY_TO_DECIMAL  */
    REMOVE_EXTRA_SPACES = 286,     /* REMOVE_EXTRA_SPACES  */
    COMBINATION = 287,             /* COMBINATION  */
    UNIQUE_ELEMENTS = 288,         /* UNIQUE_ELEMENTS  */
    GCD = 289,                     /* GCD  */
    LCM = 290,                     /* LCM  */
    SEMICOLON = 291                /* SEMICOLON  */
  };
  typedef enum yytokentype yytoken_kind_t;
#endif

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;


int yyparse (void);


#endif /* !YY_YY_PARSER_TAB_H_INCLUDED  */
