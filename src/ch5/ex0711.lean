variables (p q r : Prop)

example (hp : p) : p ∧ q ↔ q :=
  by simp *

example (hp : p) : p ∨ q :=
  by simp *

example (hp : p) (hq : q) : p ∧ (q ∨ r) :=
  by simp *
