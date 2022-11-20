%option noyywrap

%{
    #include <stdio.h>
    int count = 0;
%}

%%
[_a-zA-Z][_a-zA-Z0-9]* count++;
%%

int main()
{
    yyin = fopen("hello.txt", "r");
    yylex();
    printf("\nNo.of Identifiers: %d", count);
    return 0;
}