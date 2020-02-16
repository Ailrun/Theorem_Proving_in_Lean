constants p q : Prop

theorem t1 : p → q → p :=
  assume hp : p,
  assume hq : q,
  show p, from hp
