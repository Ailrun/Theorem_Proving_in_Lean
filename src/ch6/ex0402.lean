variable {α : Type*}

def is_prefix (l₁ : list α) (l₂ : list α) : Prop :=
  ∃ t, l₁ ++ t = l₂

infix ` <+: `:50 := is_prefix

@[simp]
theorem list.is_prefix_refl (l : list α) : l <+: l :=
  ⟨[], by simp⟩
