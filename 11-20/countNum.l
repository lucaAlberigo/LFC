%{
int charcount = 0 , linecount = 0, wordcount = 0;
%}
letter [^ \t\n]

%%

{letter}+ {wordcount++; charcount+=yyleng;}
. charcount++;
\n {linecount++; charcount++;}

%%

int main()
{
yylex();
printf("there were %d characters in %d lines\n", charcount,linecount );
printf("there were a total of %d words\n",wordcount);
return 0;
}
