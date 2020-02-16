constants p q : Prop

lemma t1 : p → q → p :=
  assume hp : p,
  assume hq : q,
  show p, from hp
