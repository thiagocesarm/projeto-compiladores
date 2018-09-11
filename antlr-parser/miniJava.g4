grammar miniJava;

program           : 'class' CLASSID classDecl classDeclOp? ;

classDeclOp       : 'class' CLASSID classDecl classDeclOp? ;

classDecl         : '{' varDeclOp? methodDeclOp? '}'
                  | 'extends' CLASSID '{' varDeclOp? methodDeclOp? '}' ;

methodDeclOp      : 'public' methodDecl methodDeclOp? ;

methodDecl        : type ID '(' formalParams? ')' compoundStatement 
                  | 'static' 'void' 'main' '(' 'String' '['']' ID ')' compoundStatement ;

formalParams      : formal formalParamsOp? ;

formalParamsOp    : ',' formal formalParamsOp? ;

formal            : type ID ;

varDeclOp         : varDecl varDeclOp? ;

varDecl           : type ID assignmentDecl? ';' ;

assignmentDecl    : '=' expr ;

type              : basicType opBrackets? | CLASSID | ID | 'void' ;

basicType         : 'boolean' | 'int' | 'double' ;

opBrackets        : '[' ']' ;

statement         : 'if' '(' expr ')' compoundStatement selection?
                  | nonIfStatement ;

compoundStatement : '{' varDeclOp? statementOp? '}' ;

selection         : 'else' compoundStatement ;

statementOp       : statement statementOp? ;

seqIds            : ID seqIdsFollow ; 

seqIdsFollow      : paren | attrib | dot | '[' expr ']' arrayFollow ;

arrayFollow       : dot | attrib ;

paren             : '(' exprListOp? ')' parenFollow ;

parenFollow       : dot | attrib | ';' ;

attrib            : '=' expr ';' ;

dot               : '.' seqIds ;


nonIfStatement    : compoundStatement  
                  | seqIds
                  | 'while' '(' expr ')' statement
                  | 'System.out.println' '(' sysOutArg? ')' ';'
                  | 'return' expr ';' ;

sysOutArg         : expr | STRING ;

exprListOp        : exprList ;

exprList          : expr exprStatement? ;

exprStatement     : ',' exprList ;

expr              : expr1 exprEx? ;

exprEx            : '||' expr1 exprEx? ;

expr1             : expr2 expr1Ex? ;

expr1Ex           : '&&' expr2 expr1Ex? ;

expr2             : expr3 optionalComp? ;

optionalComp      : compOp expr3 ;

compOp            : '==' | '!=' | '<=' | '<' | '>=' | '>' ;

expr3             : expr4 expr3Ex? ;

expr3Ex           : '+' expr4 expr3Ex? 
                  | '-' expr4 expr3Ex? ;

expr4             : expr5 expr4Ex? ;

expr4Ex           : '*' expr5 expr4Ex? 
                  | '/' expr5 expr4Ex? ;

expr5             : '!' expr5
                  | expr6 ;

expr6             : ID idArgs? expr6Ex? 
                  | expr7 expr6Ex? ;

idArgs            : '(' exprListOp? ')' ;

expr6Ex           : '.length()'
                  | '[' expr3 ']' ;

expr7             : 'new' expr7Ex
                  | 'this'
                  | '(' expr ')'
                  | number ;

expr7Ex           : basicType '[' expr3 ']'
                  | ID '(' ')' ;

number            : INT | REAL | 'true' | 'false' ;

fragment DIGIT  : [0-9] ;
fragment BLETTER: [A-Z] ;
fragment SLETTER: [a-z] ;
fragment LETTER : [a-zA-Z] ;
fragment ESC    : '\\"' | '\\\\' ;

LINE_COMMENT      : '//' .*? '\r'? '\n' -> skip ;
COMMENT           : '/*' .*? '*/' -> skip ;
STARTCOMMSYM      : '/*' ;
ENDCOMMSYM        : '*/' ;
ID                : SLETTER (LETTER | DIGIT)* ;
CLASSID           : BLETTER (LETTER | DIGIT)* ;
REAL              : DIGIT+ '.' DIGIT* ;
INT               : DIGIT+ ;
STRING                  : '"' (ESC|.)*? '"' ;
WHITESPACE        : [ \t\n\r]+   -> skip  ;