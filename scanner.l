%{
#include "y.tab.h"
%}

digit         [0-9]
letter        [a-zA-Z]

%%
"class"			        { printf("Recognized symbol as CLASSSYM, token %d\n", CLASSSYM); return CLASSSYM;}
"main"			        { printf("Recognized symbol as MAINSYM, token %d\n", MAINSYM); return MAINSYM;	}
"public"			    { printf("Recognized symbol as PUBLICSYM, token %d\n", PUBLICSYM); return PUBLICSYM;	}
"static"			    { printf("Recognized symbol as STATICSYM, token %d\n", STATICSYM); return STATICSYM;	}
"System.out.println" 	{ printf("Recognized symbol as SYSOUTSYM, token %d\n", SYSOUTSYM); return SYSOUTSYM;	}
"boolean"              	{ printf("Recognized symbol as BOOLSYM, token %d\n", BOOLSYM); return BOOLSYM;	} 
"int"              	    { printf("Recognized symbol as INTSYM, token %d\n", INTSYM); return INTSYM;	}
"double"              	{ printf("Recognized symbol as DOUBLESYM, token %d\n", DOUBLESYM); return DOUBLESYM;	}
"length"              	{ printf("Recognized symbol as LENGTHSYM, token %d\n", LENGTHSYM); return LENGTHSYM;	}
"new"              	    { printf("Recognized symbol as NEWSYM, token %d\n", NEWSYM); return NEWSYM;	}
"return"              	{ printf("Recognized symbol as RETURNSYM, token %d\n", RETURNSYM); return RETURNSYM;	}
"String"              	{ printf("Recognized symbol as STRINGSYM, token %d\n", STRINGSYM); return STRINGSYM;	}
"this"              	{ printf("Recognized symbol as THISSYM, token %d\n", THISSYM); return THISSYM;	}
"extends"              	{ printf("Recognized symbol as EXTSYM, token %d\n", EXTSYM); return EXTSYM;	}
"if"                 	{ printf("Recognized symbol as IFSYM, token %d\n", IFSYM); return IFSYM;		}
"else"			        { printf("Recognized symbol as ELSESYM, token %d\n", ELSESYM); return ELSESYM;	}
"true"			        { printf("Recognized symbol as TRUESYM, token %d\n", TRUESYM); return TRUESYM;	}
"false"			        { printf("Recognized symbol as FALSESYM, token %d\n", FALSESYM); return FALSESYM;	}
"void"                	{ printf("Recognized symbol as VOIDSYM, token %d\n", VOIDSYM); return VOIDSYM;	}
"while"              	{ printf("Recognized symbol as WHILESYM, token %d\n", WHILESYM); return WHILESYM;	}
"="                  	{ printf("Recognized symbol as ATTRIB, token %d\n", ATTRIB); return ATTRIB;	}
"+"                  	{ printf("Recognized symbol as PLUS, token %d\n", PLUS); return PLUS;		}
"-"                  	{ printf("Recognized symbol as MINUS, token %d\n", MINUS); return MINUS;		}
"*"                  	{ printf("Recognized symbol as TIMES, token %d\n", TIMES); return TIMES;		}
"/"                  	{ printf("Recognized symbol as DIV, token %d\n", DIV); return DIV;		}
"&&"				    { printf("Recognized symbol as AND, token %d\n", AND); return AND;		}
"||"                 	{ printf("Recognized symbol as OR, token %d\n", OR); return OR;		}
"!"				        { printf("Recognized symbol as NEG, token %d\n", NEG); return NEG;		}
"=="                  	{ printf("Recognized symbol as EQL, token %d\n", EQL); return EQL;		}
"!="				    { printf("Recognized symbol as NEQ, token %d\n", NEQ); return NEQ;		}
"<"                  	{ printf("Recognized symbol as LSS, token %d\n", LSS); return LSS;		}
"<="                 	{ printf("Recognized symbol as LEQ, token %d\n", LEQ); return LEQ;		}
">"                  	{ printf("Recognized symbol as GTR, token %d\n", GTR); return GTR;		}
">="                 	{ printf("Recognized symbol as GEQ, token %d\n", GEQ); return GEQ;		}
";"                  	{ printf("Recognized symbol as SEMICOLON, token %d\n", SEMICOLON); return SEMICOLON;	}
","                  	{ printf("Recognized symbol as COMMA, token %d\n", COMMA); return COMMA;		}
"."                  	{ printf("Recognized symbol as PERIOD, token %d\n", PERIOD); return PERIOD;	}
"("                  	{ printf("Recognized symbol as LPAREN, token %d\n", LPAREN); return LPAREN;	}
")"                  	{ printf("Recognized symbol as RPAREN, token %d\n", RPAREN); return RPAREN;	}
"["                  	{ printf("Recognized symbol as LSQUARE, token %d\n", LSQUARE); return LSQUARE;	}
"]"                  	{ printf("Recognized symbol as RSQUARE, token %d\n", RSQUARE); return RSQUARE;	}
"{"				        { printf("Recognized symbol as LCURLY, token %d\n", LCURLY); return LCURLY;	}
"}"				        { printf("Recognized symbol as RCURLY, token %d\n", RCURLY); return RCURLY;	}
"//"				    { printf("Recognized symbol as SINGLECOMMSYM, token %d\n", SINGLECOMMSYM); return SINGLECOMMSYM;   }
"/*"              	    { printf("Recognized symbol as STARTCOMMSYM, token %d\n", STARTCOMMSYM); return STARTCOMMSYM;  }
"*/"              	    { printf("Recognized symbol as STARTCOMMSYM, token %d\n", STARTCOMMSYM); return STARTCOMMSYM;    }
{letter}({letter}|{digit})* { printf("Recognized symbol as ID, token %d\n", ID); return ID;  }
{digit}+             	{ printf("Recognized symbol as NUMBER, token %d\n", NUMBER); return NUMBER;  }
"\""({letter}|{digit})*"\"" { printf("Recognized symbol as STRINGLIT, token %d\n", STRINGLIT); return STRINGLIT;  }
[ \t\n\r]            /* skip whitespace */
.                       { printf("Unknown character [%c]\n",yytext[0]); return UNKNOWN;    }
%%
int yywrap(void){return 1;}
