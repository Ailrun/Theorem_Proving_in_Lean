variables p q : Prop

example (hpq : p → q) (hnq: ¬q) : ¬p :=
  assume hp : p,
  show false, from hnq (hpq hp)
