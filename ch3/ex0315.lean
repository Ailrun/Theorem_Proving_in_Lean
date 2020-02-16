variables p q : Prop

example (hp : p) (hnp: ¬p) : q := false.elim (hnp hp)
