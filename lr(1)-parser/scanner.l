%{
#include "y.tab.h"

int lines = 1;
int cols = 1;
%}

digit         [0-9]
letter        [a-zA-Z]
%x comment

%%
"/*"                                BEGIN(comment);
<comment>[^*\n]*                    // eat anything that's not a '*'
<comment>"*"+[^*/\n]*               // eat up '*'s not followed by '/'s
<comment>\n                         ++lines;
<comment>"*"+"/"                    BEGIN(INITIAL);
"class"                             { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as CLASS\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return CLASS;}
"main"                              { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as MAIN\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return MAIN; }
"public"                            { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as PUBLIC\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return PUBLIC;   }
"static"                            { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as STATIC\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return STATIC;   }
"System.out.println"                { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as SYSOUT\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return SYSOUT;   }
"boolean"                           { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as BOOLEAN\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return BOOLEAN; } 
"int"                               { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as INT\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return INT;    }
"double"                            { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as DOUBLE\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return DOUBLE;   }
".length()"                         { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as LENGTH\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return LENGTH;   }
"new"                               { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as NEW\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return NEW;    }
"return"                            { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as RETURN\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return RETURN;   }
"String"                            { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as STRING\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return STRING;   }
"this"                              { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as THIS\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return THIS; }
"extends"                           { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as EXTENDS\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return EXTENDS;    }
"if"                                { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as IF\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return IF;       }
"else"                              { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as ELSE\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return ELSE; }
"true"                              { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as TRUE\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return TRUE; }
"false"                             { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as FALSE\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return FALSE;  }
"void"                              { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as VOID\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return VOID; }
"while"                             { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as WHILE\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return WHILE;  }
"="                                 { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as ATTRIB\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return ATTRIB;    }
"+"                                 { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as PLUS\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return PLUS;      }
"-"                                 { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as MINUS\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return MINUS;       }
"*"                                 { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as TIMES\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return TIMES;       }
"/"                                 { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as DIV\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return DIV;     }
"&&"                                { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as AND\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return AND;     }
"||"                                { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as OR\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return OR;        }
"!"                                 { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as NEG\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return NEG;     }
"=="                                { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as EQL\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return EQL;     }
"!="                                { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as NEQ\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return NEQ;     }
"<"                                 { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as LSS\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return LSS;     }
"<="                                { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as LEQ\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return LEQ;     }
">"                                 { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as GTR\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return GTR;     }
">="                                { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as GEQ\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return GEQ;     }
";"                                 { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as SEMICOLON\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return SEMICOLON;   }
","                                 { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as COMMA\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return COMMA;       }
"."                                 { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as PERIOD\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return PERIOD;    }
"("                                 { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as LPAREN\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return LPAREN;    }
")"                                 { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as RPAREN\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return RPAREN;    }
"["                                 { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as LSQUARE\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return LSQUARE; }
"]"                                 { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as RSQUARE\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return RSQUARE; }
"{"                                 { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as LCURLY\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return LCURLY;    }
"}"                                 { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as RCURLY\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return RCURLY;    }
"//"[^\r\n]*                        { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as SINGLECOMM\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return SINGLECOMM;   }
{letter}({letter}|{digit})*         { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as ID\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return ID;  }
{digit}+'.'{digit}*                 { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as REALNUM\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return REALNUM;  }
{digit}+                            { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as INTNUM\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return INTNUM;  }
"\""({letter}|{digit})*"\""         { printf("Line %d\tColumn %d\tSize %lu\tRecognized symbol as STRINGLIT\tLexem %s\n", lines, cols, yyleng, yytext); cols += yyleng;  return STRINGLIT;  }
[\n\r]                              {lines++; cols = 1;}
[ \t]                               {cols++;}
.                                   { printf("Lexycal Error: Symbol not recgnized [%c] on line: %d, column:%d \n",yytext[0], lines, cols); cols += yyleng;  return UNKNOWN;    }
%%
int yywrap(void){return 1;}
