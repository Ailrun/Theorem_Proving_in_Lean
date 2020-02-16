variables p q : Prop

theorem and_swap : p ∧ q ↔ q ∧ p :=
  iff.intro
    (assume h : p ∧ q,
      show q ∧ p, from ⟨h.right, h.left⟩)
    (assume h : q ∧ p,
      show p ∧ q, from ⟨h.right, h.left⟩)

#check and_swap

