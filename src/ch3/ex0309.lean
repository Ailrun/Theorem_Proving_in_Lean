variables p q : Prop

example (h : p ∧ q) : q ∧ p ∧ q := ⟨h.right, ⟨h.left, h.right⟩⟩
example (h : p ∧ q) : q ∧ p ∧ q := ⟨h.right, h.left, h.right⟩
