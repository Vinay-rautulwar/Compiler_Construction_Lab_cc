%{
int count = 0;
%}

%%
[Aa][a-zA-Z]*	{ count++; }
[ \t\n]+	;
.		;
%%

int yywrap()
{
	return 1;
}

int main()
{
	printf("Enter a sentence:\n");
	yylex();
	printf("\nCount of words starting with A or a = %d\n", count);
	return 0;
}


