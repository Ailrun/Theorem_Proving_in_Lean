variables (α : Type) (p q : α → Prop)

example (h : ∃ x, p x ∧ q x) : ∃ x, q x ∧ p x :=
  match h with ⟨w, hw⟩ :=
    ⟨w, hw.right, hw.left⟩
  end
