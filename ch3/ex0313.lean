variables p q : Prop

example (h : p ∨ q) : q ∨ p :=
  h.elim
    (assume hp : p, or.inr hp)
    (assume hq : q, or.inl hq)
