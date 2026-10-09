%{
#include "y.tab.h"
%}

%%
"for"       { return FOR; }
"("         { return '('; }
")"         { return ')'; }
";"         { return ';'; }
"="         { return '='; }
"<"         { return '<'; }
">"         { return '>'; }
"++"        { return INC; }
"--"        { return DEC; }
[0-9]+      { yylval = atoi(yytext); return NUM; }
[a-zA-Z_][a-zA-Z0-9_]* { return ID; }
[ \t\n]+    ;
.           { return yytext[0]; }
%%

int yywrap()
{
    return 1;
}

