%{
/* Comments */
%}
%%
[ \t]+                      {/* ignore */ break; }
"("                         { printf("<lparen>"); break; }
")"		                    { printf("<rparen>"); break; }
"+"                         { printf("<plus>"); break; }
"*"                         { printf("<mult>"); break; }
"-"                         { printf("<minus>"); break; }
"/"                         { printf("<division>"); break; }
[a-zA-z]+                   { printf("<var>"); break;}
[0-9]*("\."?([0-9]+))       { printf("<number>"); break;}
.                           { printf("%s", yytext);}    
%%
main ()
{
    yylex();
}
