%option noyywrap

%{
    #include <stdio.h>
    char character;
    char word;
}

word [a-zA-Z]+
character [A-Za-z]

%%
{character}{printf("%s:IT IS A CHARACTER\n", yytext);}
{word} {printf("%s: IT IS A WORD\n", yytext);}

%%
int main()
{
    yylex();
    return 0;
}