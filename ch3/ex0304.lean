variables p q : Prop

example (h : p ∧ q) : q ∧ p := and.intro (and.elim_right h) (and.elim_left h)
