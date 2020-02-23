constants m n : nat
constant b : bool

#print "reducing pairs"
#reduce (m, n).1
#reduce (m, n).2

#print "reducing boolean expressions"
#reduce tt && ff
#reduce ff && b
#reduce b && ff

#print "reducing arithmetic expressions"
#reduce n + 0
#reduce n + 2
#reduce 2 + 3

