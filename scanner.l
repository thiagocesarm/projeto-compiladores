%{
#include "y.tab.h"

int lines = 1;
int cols = 1;
%}

digit         [0-9]
letter        [a-zA-Z]
%x comment

%%
"/*"                            BEGIN(comment);
<comment>[^*\n]*                // eat anything that's not a '*'
<comment>"*"+[^*/\n]*           // eat up '*'s not followed by '/'s
<comment>\n                     ++lines;
<comment>"*"+"/"                BEGIN(INITIAL);
"class"                         { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as CLASSSYM\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return CLASSSYM;}
"main"                          { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as MAINSYM\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return MAINSYM; }
"public"                        { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as PUBLICSYM\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return PUBLICSYM;   }
"static"                        { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as STATICSYM\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return STATICSYM;   }
"System.out.println"            { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as SYSOUTSYM\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return SYSOUTSYM;   }
"boolean"                       { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as BOOLSYM\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return BOOLSYM; } 
"int"                           { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as INTSYM\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return INTSYM;    }
"double"                        { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as DOUBLESYM\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return DOUBLESYM;   }
"length"                        { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as LENGTHSYM\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return LENGTHSYM;   }
"new"                           { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as NEWSYM\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return NEWSYM;    }
"return"                        { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as RETURNSYM\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return RETURNSYM;   }
"String"                        { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as STRINGSYM\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return STRINGSYM;   }
"this"                          { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as THISSYM\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return THISSYM; }
"extends"                       { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as EXTSYM\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return EXTSYM;    }
"if"                            { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as IFSYM\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return IFSYM;       }
"else"                          { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as ELSESYM\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return ELSESYM; }
"true"                          { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as TRUESYM\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return TRUESYM; }
"false"                         { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as FALSESYM\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return FALSESYM;  }
"void"                          { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as VOIDSYM\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return VOIDSYM; }
"while"                         { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as WHILESYM\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return WHILESYM;  }
"="                             { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as ATTRIB\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return ATTRIB;    }
"+"                             { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as PLUS\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return PLUS;      }
"-"                             { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as MINUS\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return MINUS;       }
"*"                             { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as TIMES\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return TIMES;       }
"/"                             { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as DIV\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return DIV;     }
"&&"                            { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as AND\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return AND;     }
"||"                            { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as OR\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return OR;        }
"!"                             { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as NEG\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return NEG;     }
"=="                            { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as EQL\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return EQL;     }
"!="                            { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as NEQ\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return NEQ;     }
"<"                             { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as LSS\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return LSS;     }
"<="                            { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as LEQ\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return LEQ;     }
">"                             { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as GTR\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return GTR;     }
">="                            { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as GEQ\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return GEQ;     }
";"                             { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as SEMICOLON\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return SEMICOLON;   }
","                             { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as COMMA\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return COMMA;       }
"."                             { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as PERIOD\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return PERIOD;    }
"("                             { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as LPAREN\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return LPAREN;    }
")"                             { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as RPAREN\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return RPAREN;    }
"["                             { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as LSQUARE\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return LSQUARE; }
"]"                             { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as RSQUARE\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return RSQUARE; }
"{"                             { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as LCURLY\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return LCURLY;    }
"}"                             { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as RCURLY\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return RCURLY;    }
"//"[^\r\n]*                    { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as SINGLECOMM\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return SINGLECOMM;   }
{letter}({letter}|{digit})*     { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as ID\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return ID;  }
{digit}+                        { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as NUMBER\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return NUMBER;  }
"\""({letter}|{digit})*"\""     { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as STRINGLIT\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return STRINGLIT;  }
[\n\r]                          {lines++; cols = 1;}
[ \t]                           {cols++;}
.                               { printf("Lexycal Error: Symbol not recgnized [%c] on line: %d, column:%d \n",yytext[0], lines, cols); cols += yyleng;  return UNKNOWN;    }
%%
int yywrap(void){return 1;}
