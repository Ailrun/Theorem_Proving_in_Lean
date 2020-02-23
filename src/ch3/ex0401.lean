variables p q : Prop

example (h : p ∧ q) : q ∧ p :=
  have hp : p, from and.left h,
  have hq : q, from and.right h,
  show q ∧ p, from and.intro hq hp
