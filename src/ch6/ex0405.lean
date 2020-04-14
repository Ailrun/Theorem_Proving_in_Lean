variable {α : Type*}

def is_prefix (l₁ : list α) (l₂ : list α) : Prop :=
  ∃ t, l₁ ++ t = l₂

instance list_has_le : has_le (list α) := ⟨is_prefix⟩

theorem list.is_prefix_refl (l : list α) : l ≤ l :=
  ⟨[], by simp⟩
