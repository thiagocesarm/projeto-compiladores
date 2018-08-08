%{
#include "y.tab.h"

int rows = 1;
int cols = 1;
%}

digit         [0-9]
letter        [a-zA-Z]

%%
"class"			        { printf("Recognized symbol as CLASSSYM, token %d with size of %d", CLASSSYM, yyleng); cols += yyleng;  return CLASSSYM;}
"main"			        { printf("Recognized symbol as MAINSYM, token %d\n", MAINSYM); cols += yyleng;  return MAINSYM;	}
"public"			    { printf("Recognized symbol as PUBLICSYM, token %d\n", PUBLICSYM); cols += yyleng;  return PUBLICSYM;	}
"static"			    { printf("Recognized symbol as STATICSYM, token %d\n", STATICSYM); cols += yyleng;  return STATICSYM;	}
"System.out.println" 	{ printf("Recognized symbol as SYSOUTSYM, token %d\n", SYSOUTSYM); cols += yyleng;  return SYSOUTSYM;	}
"boolean"              	{ printf("Recognized symbol as BOOLSYM, token %d\n", BOOLSYM); cols += yyleng;  return BOOLSYM;	} 
"int"              	    { printf("Recognized symbol as INTSYM, token %d\n", INTSYM); cols += yyleng;  return INTSYM;	}
"double"              	{ printf("Recognized symbol as DOUBLESYM, token %d\n", DOUBLESYM); cols += yyleng;  return DOUBLESYM;	}
"length"              	{ printf("Recognized symbol as LENGTHSYM, token %d\n", LENGTHSYM); cols += yyleng;  return LENGTHSYM;	}
"new"              	    { printf("Recognized symbol as NEWSYM, token %d\n", NEWSYM); cols += yyleng;  return NEWSYM;	}
"return"              	{ printf("Recognized symbol as RETURNSYM, token %d\n", RETURNSYM); cols += yyleng;  return RETURNSYM;	}
"String"              	{ printf("Recognized symbol as STRINGSYM, token %d\n", STRINGSYM); cols += yyleng;  return STRINGSYM;	}
"this"              	{ printf("Recognized symbol as THISSYM, token %d\n", THISSYM); cols += yyleng;  return THISSYM;	}
"extends"              	{ printf("Recognized symbol as EXTSYM, token %d\n", EXTSYM); cols += yyleng;  return EXTSYM;	}
"if"                 	{ printf("Recognized symbol as IFSYM, token %d\n", IFSYM); cols += yyleng;  return IFSYM;		}
"else"			        { printf("Recognized symbol as ELSESYM, token %d\n", ELSESYM); cols += yyleng;  return ELSESYM;	}
"true"			        { printf("Recognized symbol as TRUESYM, token %d\n", TRUESYM); cols += yyleng;  return TRUESYM;	}
"false"			        { printf("Recognized symbol as FALSESYM, token %d\n", FALSESYM); cols += yyleng;  return FALSESYM;	}
"void"                	{ printf("Recognized symbol as VOIDSYM, token %d\n", VOIDSYM); cols += yyleng;  return VOIDSYM;	}
"while"              	{ printf("Recognized symbol as WHILESYM, token %d\n", WHILESYM); cols += yyleng;  return WHILESYM;	}
"="                  	{ printf("Recognized symbol as ATTRIB, token %d\n", ATTRIB); cols += yyleng;  return ATTRIB;	}
"+"                  	{ printf("Recognized symbol as PLUS, token %d\n", PLUS); cols += yyleng;  return PLUS;		}
"-"                  	{ printf("Recognized symbol as MINUS, token %d\n", MINUS); cols += yyleng;  return MINUS;		}
"*"                  	{ printf("Recognized symbol as TIMES, token %d\n", TIMES); cols += yyleng;  return TIMES;		}
"/"                  	{ printf("Recognized symbol as DIV, token %d\n", DIV); cols += yyleng;  return DIV;		}
"&&"				    { printf("Recognized symbol as AND, token %d\n", AND); cols += yyleng;  return AND;		}
"||"                 	{ printf("Recognized symbol as OR, token %d\n", OR); cols += yyleng;  return OR;		}
"!"				        { printf("Recognized symbol as NEG, token %d\n", NEG); cols += yyleng;  return NEG;		}
"=="                  	{ printf("Recognized symbol as EQL, token %d\n", EQL); cols += yyleng;  return EQL;		}
"!="				    { printf("Recognized symbol as NEQ, token %d\n", NEQ); cols += yyleng;  return NEQ;		}
"<"                  	{ printf("Recognized symbol as LSS, token %d\n", LSS); cols += yyleng;  return LSS;		}
"<="                 	{ printf("Recognized symbol as LEQ, token %d\n", LEQ); cols += yyleng;  return LEQ;		}
">"                  	{ printf("Recognized symbol as GTR, token %d\n", GTR); cols += yyleng;  return GTR;		}
">="                 	{ printf("Recognized symbol as GEQ, token %d\n", GEQ); cols += yyleng;  return GEQ;		}
";"                  	{ printf("Recognized symbol as SEMICOLON, token %d\n", SEMICOLON); cols += yyleng;  return SEMICOLON;	}
","                  	{ printf("Recognized symbol as COMMA, token %d\n", COMMA); cols += yyleng;  return COMMA;		}
"."                  	{ printf("Recognized symbol as PERIOD, token %d\n", PERIOD); cols += yyleng;  return PERIOD;	}
"("                  	{ printf("Recognized symbol as LPAREN, token %d\n", LPAREN); cols += yyleng;  return LPAREN;	}
")"                  	{ printf("Recognized symbol as RPAREN, token %d\n", RPAREN); cols += yyleng;  return RPAREN;	}
"["                  	{ printf("Recognized symbol as LSQUARE, token %d\n", LSQUARE); cols += yyleng;  return LSQUARE;	}
"]"                  	{ printf("Recognized symbol as RSQUARE, token %d\n", RSQUARE); cols += yyleng;  return RSQUARE;	}
"{"				        { printf("Recognized symbol as LCURLY, token %d\n", LCURLY); cols += yyleng;  return LCURLY;	}
"}"				        { printf("Recognized symbol as RCURLY, token %d\n", RCURLY); cols += yyleng;  return RCURLY;	}
"//"[^\r\n]* 		    { printf("Recognized symbol as SINGLECOMM, token %d\n", SINGLECOMM); cols += yyleng;  return SINGLECOMM;   }
"/*"              	    { printf("Recognized symbol as STARTCOMMSYM, token %d\n", STARTCOMMSYM); cols += yyleng;  return STARTCOMMSYM;  }
"*/"              	    { printf("Recognized symbol as STARTCOMMSYM, token %d\n", STARTCOMMSYM); cols += yyleng;  return STARTCOMMSYM;    }
{letter}({letter}|{digit})* { printf("Recognized symbol as ID, token %d\n", ID); cols += yyleng;  return ID;  }
{digit}+             	{ printf("Recognized symbol as NUMBER, token %d\n", NUMBER); cols += yyleng;  return NUMBER;  }
"\""({letter}|{digit})*"\"" { printf("Recognized symbol as STRINGLIT, token %d\n", STRINGLIT); cols += yyleng;  return STRINGLIT;  }
[\n\r]                 {printf("Rows: %d, Cols: %d", rows, cols); rows++; cols = 1;}
[ \t]                 {cols++;}
.                       { printf("Unknown character [%c]\n",yytext[0]); cols += yyleng;  return UNKNOWN;    }
%%
int yywrap(void){return 1;}
