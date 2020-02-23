variables p q : Prop

example (h : p ∨ q) : q ∨ p :=
  or.elim h
    (assume hp : p,
      show q ∨ p, from or.intro_right q hp)
    (assume hq : q,
      show q ∨ p, from or.intro_left p hq)
