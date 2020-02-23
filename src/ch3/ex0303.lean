variables p q : Prop

example (h : p ∧ q) : p := and.elim_left h
example (h : p ∧ q) : q := and.elim_right h
