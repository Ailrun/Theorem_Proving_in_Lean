variables p q : Prop

example (h : p ∧ q) : q ∧ p := ⟨h.right, h.left⟩
