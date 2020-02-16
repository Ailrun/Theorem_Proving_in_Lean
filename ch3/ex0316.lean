variables p q : Prop

example (hp : p) (hnp: ¬p) : q := absurd hp hnp
