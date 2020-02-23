theorem t1 (p q : Prop) (hp : p) (hq : q) : p := hp

variables p q r s : Prop

#check t1 p q
#check t1 r s
#check t1 (r → s) (s → r)

variable h : r → s
#check t1 (r → s) (s → r) h

