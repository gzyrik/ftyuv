mycc: y.tab.c y.tab.h lex.yy.c Makefile
	$(CC) $(filter %.c,$^) -o $@

y.tab.c y.tab.h : mycc.y
	$(YACC) $<

lex.yy.c : mycc.l
	$(LEX) $<

clean:
	$(RM) mycc y.tab.c y.tab.h lex.yy.c
