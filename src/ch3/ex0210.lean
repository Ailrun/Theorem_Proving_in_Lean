variables p q : Prop

theorem t1 : p → q → p := λ (hp : p) (hq : q), hp
