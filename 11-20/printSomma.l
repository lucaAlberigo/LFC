%{/*definisco le variabili*/
int a=0; int sum=0;
%}

digit [0-9]


%%


{digit}+ {/*eseguo le istruzioni per ogni numero trovato*/ a=atoi(yytext); sum+=a;}
.

%%
int main() {/* . dice di non fare niente per tutto il resto delle cose (lo standard è echo)*/
	yylex();
	printf ("la somma e %d\n", sum);
}
