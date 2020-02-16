variables p q : Prop

theorem and_swap : p ∧ q ↔ q ∧ p :=
  iff.intro
    (assume h : p ∧ q,
      show q ∧ p, from ⟨h.right, h.left⟩)
    (assume h : q ∧ p,
      show p ∧ q, from ⟨h.right, h.left⟩)

variable h : p ∧ q
example : q ∧ p := iff.mp (and_swap p q) h
