constants p q : Prop

theorem t1 (hp : p) (hq : q) : p := hp

axiom hp : p

theorem t2 : q → p := t1 hp
