%{
#include <stdio.h>
#include <stdlib.h>

int yylex();
int yyerror(char *);
%}

%token FOR ID NUM INC DEC

%%
program:
    for_statement
    ;
for_statement:
    FOR '(' initialization ';' condition ';' increment ')' statement
    ;
initialization:
    ID '=' NUM
    ;
condition:
    ID '<' NUM
    | ID '>' NUM
    ;

increment:
    ID INC
    | ID DEC
    ;

statement:
    '{' statements '}'
    | ID '=' NUM ';'
    ;

statements:
    statements statement
    | statement
    ;
%%

int main()
{
    printf("Enter FOR loop statement:\n");
    if (yyparse() == 0)
        printf("Valid FOR loop statement\n");
    return 0;
}

int yyerror(char *s)
{
    printf("Invalid FOR loop statement\n");
    return 0;
}

