%{
int charcount = 0 , linecount = 0, wordcount = 0;
%}
cazzo [^ \t\n]
//tutti i char, meno: spazio slashT slashN(si scrive tutto attaccato)
%%

{cazzo}+ {wordcount++; charcount+=yyleng;}//quando trovi una combinazione di lettere fai...
. charcount++; //quando trovi qualsiasi carattere, fai charcount++
\n {linecount++; charcount++;}//quando vedo \n fai le cose fra graffe

%%

int main()
{
yylex();
printf("there were %d characters in %d lines\n", charcount,linecount );
printf("there were a total of %d words\n",wordcount);
return 0;
}
