constants p q : Prop

theorem t1 : p → q → p := λ hp : p, λ hq : q, hp

#print t1

