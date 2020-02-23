variables p q : Prop

example (h : p ∨ q) : q ∨ p :=
  or.elim h (λ hp, or.inr hp) (λ hq, or.inl hq)
