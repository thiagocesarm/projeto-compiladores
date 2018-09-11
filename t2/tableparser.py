#All constants are indexed from 0

Term = 0
Rule = 1

# Terminals
CLASSSYM =258
MAINSYM =259
PUBLICSYM =260
STATICSYM =261
SYSOUTSYM =262
BOOLSYM =263
INTSYM =264
DOUBLESYM =265
LENGTHSYM =266
NEWSYM =267
RETURNSYM =268
STRINGSYM =269
THISSYM =270
EXTSYM =271
IFSYM =272
ELSESYM =273
TRUESYM =274
FALSESYM =275
VOIDSYM =276
WHILESYM =277
ATTRIB =278
PLUS =279
MINUS =280
TIMES =281
DIV =282
AND =283
OR =284
NEG =285
EQL =286
NEQ =287
LSS =288
GTR =289
GEQ =290
LEQ =291
SEMICOLON =292
COMMA =293
PERIOD =294
LPAREN =295
RPAREN =296
LSQUARE =297
RSQUARE =298
LCURLY =299
RCURLY =300
SINGLECOMM =301
STARTCOMMSYM =302
ENDCOMMSYM =303
ID =304
NUMBER =305
UNKNOWN= 306
STRINGLIT = 307
DIGITSYM = 308
NUMBERSYM = 309
END = 310
INVALID = 311


# Non-terminals
CLassDeclOp = 0
CLassDecl = 1
VarDeclOp = 2
MethodDeclOp = 3
Type = 4
AssignmentDecl = 5
Expr = 6
VarDecl = 7
FormalParams = 8
CompoundStatement = 9
Formal = 10
FormalParams = 11
FormalParamsOp = 12
BasicType = 13
OpBrackets = 14
OBJECTID = 15
Statement = 16
Selection = 17
NonIfStatement = 18
StatementOp = 19
ExprOp = 20
ExprComplement = 21
SysOutArg = 22
ExprComplement = 23
ExprAssignment = 24
ExprMethodCall = 25
ExpStatement = 26
ExprListOp = 27
ExprList = 28
Expr1 = 29
Expr11 = 30
Expr111 = 31
Expr2 = 32
Expr3 = 33
OptionalComp = 34
CompOp = 35
Expr4 = 36
Expr33 = 37
Expr5 = 38
Expr44 = 39
Expr6 = 40
Expr66 = 41
IdArgs = 42
Expr7 = 43
DotExpr6 = 44
NewExpr7 = 45
Number = 46
SeqIds = 47
SeqIdsFollow = 48
Paren = 49
Attrib = 50
ParenFollow = 51


#parse table
table = [[ 1, -1, 0, -1, -1, -1],
         [-1, -1, 2, -1, -1, -1]]

rules = [[(Term,CLASSSYM), (Term,ID), (Rule,CLassDecl), (Rule, ClassDeclOp)],
         [(Lambda)],
         [(Term,LCURLY), (Rule,VarDeclOp), (Rule, MethodDeclOp), (Term,RCURLY) ],
         [(Term,EXTSYM), (Term,ID), (Term,LCURLY),  (Rule, VarDeclOp), (Rule, MethodDeclOp), (Term,RCURLY)],
         [(Term,public), (Rule,MethodDecl), (Rule, MethodDeclOp)],
         [(Rule,Type), (Term,ID), (Rule, AssignmentDecl), (Term,SEMICOLON)],
         [(Term, ATTRIB), (Rule, Expr)],
         [(Rule, VarDecl), (Rule, VarDeclOp)],
         # [(Term,T_LPAR), (Rule,N_S), (Term,T_PLUS), (Rule,N_F), (Term,T_RPAR)],
         # [(Rule,VarDecl), (Rule, VarDeclOp)],
         [(Rule,Type), (Term,ID), (Term, LPAREN), (Rule, FormalParams), (Term, RPAREN), (Rule, CompoundStatement)],
         [(Term,STATICSYM), (Term,VOIDSYM), (Term, MAINSYM), (Term, LPAREN), (Term, STRINGSYM), (Term, LSQUARE) , (Term, RSQUARE), (Term, ID), (Term, RPAREN), (Rule, CompoundStatement)],
         [(Rule, Formal), (Rule,FormalParamsOp)],
         [(Term, COMMA), (Rule, Formal), (Rule,FormalParamsOp)],
         [(Rule, Type), (Term, ID)],
         [(Rule, BasicType), (Rule, OpBrackets)],
         [(Rule, OBJECTID)],
         [(Term, VOIDSYM)],
         [(Term, BOOLSYM)],
         [(Term, INTSYM)],
         [(Term, DOUBLESYM)],
         [(Term, LSQUARE), (Term, RSQUARE)],
         [(Term, IFSYM), (Term, LPAREN), (Rule, Expr), (Term, RPAREN), (Rule, CompoundStatement), (Rule, Selection)],
         [(Rule, NonIfStatement)],
         [(Term, LCURLY), (Rule, VarDeclOp), (Rule, StatementOp), (Term, RCURLY)],
         [(Term, ELSESYM), (Rule, CompoundStatement)],
         [(Rule, Statement), (Rule, StatementOp)],
         [(Rule, CompoundStatement)],
         [(Term, ID), (Rule, SeqIdsFollow)],
         [(Rule, Paren)],
         [(Rule, SeqIds)],
         [(Rule, Attrib)],
         [(Rule, dot)],
         [(Term, SEMICOLON)],
         [(Term, LPAREN), (Rule, ExprListOp), (Term, RPAREN), (Rule, ParenFollow)],
         [(Rule, ExprOp), (Term, ID),(Rule, ExprComplement)],
         [(Term, WHILESYM), (Term, LPAREN), (Rule, Expr), (Term, RPAREN),(Rule, Statement)],
         [(Term, SYSOUTSYM), (Term, LPAREN), (Rule, SysOutArg), (Term, RPAREN),(Term, SEMICOLON)],
         [(Term, RETURNSYM),(Rule, Expr), (Term, SEMICOLON)],
         [(Rule, Expr), (Term, PERIOD)],
         [(Rule, ExprAssignment)],
         [(Rule, ExprMethodCall)],
         [(Term, PERIOD), (Rule, SeqIds)],
         [(Term, LSQUARE), (Rule, Expr), (Term, RSQUARE), (Term, ATTRIB), (Rule, Expr), (Term, SEMICOLON)],
         [(Term, ATTRIB), (Rule, Expr), (Term, SEMICOLON)],
         [(Term, LPAREN), (Rule, ExprListOp), (Term, RPAREN), (Term, SEMICOLON)],
         [(Rule, Expr)],
         [(Term, STRINGSYM)],
         [(Rule, Expr), (Rule, ExpStatement)],
         [(Term, COMMA), (Rule, ExprList)],
         [(Rule, ExprList)],
         [(Rule, Expr1), (Rule, Expr11)],
         [(Term, OR),(Rule, Expr1), (Rule, Expr11)],
         [(Rule, Expr2), (Rule, Expr111)],
         [(Term, AND),(Rule, Expr2), (Rule, Expr111)],
         [(Rule, Expr3), (Rule, OptionalComp)],
         [(Rule, CompOp), (Rule, Expr3)],
         [(Term, EQL)],
         [(Term, NEQ)],
         [(Term, LEQ)],
         [(Term, LSS)],
         [(Term, GTR)],
         [(Term, GEQ)],
         [(Term, LENGTHSYM)],
         [(Term, STRINGLIT)],
         [(Rule, Expr4), (Rule, Expr33)],
         [(Term, PLUS),(Rule, Expr4), (Rule, Expr33)],
         [(Term, MINUS),(Rule, Expr4), (Rule, Expr33)],
         [(Rule, Expr5), (Rule, Expr44)],
         [(Term, TIMES),(Rule, Expr5), (Rule, Expr44)],
         [(Term, DIV),(Rule, Expr5), (Rule, Expr44)],
         [(Term, NEG),(Rule, Expr5)],
         [(Rule, Expr6)],
         [(Term, ID),(Rule, IdArgs), (Rule, Expr66)],
         [(Term, LPAREN), (Rule, ExprListOp), (Term, RPAREN)],
         [(Rule, Expr7), (Rule, Expr66)],
         [(Term, LSQUARE), (Rule, Expr3), (Term, RSQUARE)],
         [(Term, LENGTHSYM), (Term, LPAREN), (Term, RPAREN), (Rule, Expr66)],
         [(Term, ID), (Rule, IdArgs) (Rule, Expr66)],
         [(Term, NEWSYM),(Rule, NewExypr7)],
         [(Term, THISSYM)],
         [(Term, LPAREN), (Rule, Expr), (Term, RPAREN)],
         [(Rule, Number)],
         [(Rule, BasicType), (Term, LSQUARE), (Rule, Expr3), (Term, RSQUARE)],
         [(Term, ID),(Term, LPAREN), (Term, RPAREN)],
         [(Term, INTSYM)],
         [(Term, REAL)],
         [(Term, TRUESYM)],
         [(Term, FALSESYM)],
         [(Term,END)]]

stack = [(Term, END)]

def lexicalAnalysis(inputstring):
    print('Lexical analysis') 
    tokens = []
    #cdict = {'+': T_PLUS, '(': T_LPAR, ')': T_RPAR, 'a': T_A}
    #for c in inputstring:
    #    tokens.append(cdict.get(c, T_INVALID))
    #
    # in the meantime it has been changed on wikipedia to simple mapping above, 
    # but the original if-elif-elif-else could be indented to make further distinction 
    # for multi-character terminals like between '-' and '->' .
    for c in inputstring:
        if c   == '+': tokens.append(PLUS)
        elif c == '-': tokens.append(MINUS)
        elif c == '*': tokens.append(TIMES)
        elif c == '/': tokens.append(DIV)
        elif c == 'new': tokens.append(NEWSYM)
        elif c == 'extends': tokens.append(EXTSYM)
        elif c == 'class': tokens.append(CLASSSYM)
        elif c == 'public': tokens.append(PUBLICSYM)
        elif c == 'static': tokens.append(STATICSYM)
        elif c == 'boolean': tokens.append(BOOLSYM)
        elif c == '.lenght()': tokens.append(LENGTHSYM)
        elif c == 'return': tokens.append(RETURNSYM)
        elif c == 'System.out.println': tokens.append(SYSOUTSYM)
        elif c == 'int': tokens.append(INTSYM)
        elif c == 'double': tokens.append(DOUBLESYM)
        elif c == 'this': tokens.append(THISSYM)
        elif c == 'if': tokens.append(IFSYM)
        elif c == 'else': tokens.append(ELSESYM)
        elif c == 'true': tokens.append(TRUESYM)
        elif c == 'false': tokens.append(FALSESYM)
        elif c == 'void': tokens.append(VOIDSYM)
        elif c == 'while': tokens.append(WHILESYM)
        elif c == '=': tokens.append(ATTRIB)
        elif c == '&&': tokens.append(AND)
        elif c == '||': tokens.append(OR)
        elif c == '!': tokens.append(NEG)
        elif c == '==': tokens.append(EQL)
        elif c == '!=': tokens.append(NEQ)
        elif c == '<': tokens.append(LSS)
        elif c == '>': tokens.append(GTR)
        elif c == '>=': tokens.append(GEQ)
        elif c == '<=': tokens.append(LEQ)
        elif c == '[': tokens.append(LSQUARE)
        elif c == ']': tokens.append(RSQUARE)
        elif c == ';': tokens.append(SEMICOLON)
        elif c == ',': tokens.append(COMMA)
        elif c == '.': tokens.append(PERIOD)
        elif c == '{': tokens.append(LCURLY)
        elif c == '}': tokens.append(RCURLY)
        elif c == '(': tokens.append(LPAREN)
        elif c == ')': tokens.append(RPAREN)
        elif c == '//': tokens.append(SINGLECOMM)
        elif c == '/*': tokens.append(STARTCOMMSYM)
        elif c == '*/': tokens.append(ENDCOMMSYM)
         elif c == 'class': tokens.append(CLASSSYM)
        elif c == 'a': tokens.append(STRINGLIT)
        else: tokens.append(T_INVALID)
    tokens.append(T_END)
    print(tokens)
    return tokens

def syntacticAnalysis(tokens):
    print('Syntactic analysis')
    position = 0
    while len(stack) > 0:
        (stype, svalue) = stack.pop()
        token = tokens[position]
        if stype == Term:        
            if svalue == token:
                position += 1
                print('pop', svalue)
                if token == T_END:
                    print('input accepted')
            else:
                print('bad term on input:', token)
                break
        elif stype == Rule:
            print('svalue', svalue, 'token', token)
            rule = table[svalue][token]
            print('rule', rule)
            for r in reversed(rules[rule]):
                stack.append(r)
        print('stack', stack)

inputstring = '(a+a)'
syntacticAnalysis(lexicalAnalysis(inputstring))