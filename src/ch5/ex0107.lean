theorem test (p q : Prop) (hp : p) (hq : q) : p ∧ q ∧ p :=
  by exact and.intro hp (and.intro hq hp)
