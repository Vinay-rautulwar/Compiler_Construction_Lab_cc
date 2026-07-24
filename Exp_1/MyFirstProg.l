%{
#include<stdio.h>
%}

%%
secB { printf("Found the word secB"); }
.|\n {}
%%

int main(){
	printf("Enter a Paragraph: ");
	yylex();
	return 0;
}

int yywrap() {
	return 1;
}
