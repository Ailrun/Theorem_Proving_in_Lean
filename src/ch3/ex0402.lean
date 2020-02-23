variables p q : Prop

example (h : p ∧ q) : q ∧ p :=
  have hp : p, from and.left h,
  suffices  hq : q, from and.intro hq hp,
  show q, from and.right h
