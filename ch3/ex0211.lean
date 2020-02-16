variables p q : Prop
variable hp : p

theorem t1 : q → p := λ (hq : q), hp
