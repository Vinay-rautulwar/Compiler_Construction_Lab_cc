%{
#include<stdio.h>
int count = 0;
%}

%%
secB { count++;}
.|\n {}
%%

int main(){
	printf("Enter a Paragraph: ");
	yylex();
	printf("The Frequency of word secB is : %d\n", count);
	return 0;
}

int yywrap(){
	return 1;
}
