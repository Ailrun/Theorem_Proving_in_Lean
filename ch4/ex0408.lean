variables (α : Type) (p q : α → Prop)

example : (∃ x, p x ∧ q x) -> ∃ x, q x ∧ p x :=
  assume ⟨w, hpw, hqw⟩, ⟨w, hqw, hpw⟩
