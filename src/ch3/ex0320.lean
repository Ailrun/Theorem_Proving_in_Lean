variables p q : Prop

theorem and_swap : p ∧ q ↔ q ∧ p :=
  ⟨λ h, ⟨h.right, h.left⟩, λ h, ⟨h.right, h.left⟩⟩

example (h : p ∧ q) : q ∧ p := (and_swap p q).mp h
