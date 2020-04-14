variable {α : Type*}

def is_prefix (l₁ : list α) (l₂ : list α) : Prop :=
  ∃ t, l₁ ++ t = l₂

def list_has_le : has_le (list α) := ⟨is_prefix⟩

section
  local attribute [instance] list_has_le

  theorem list.is_prefix_refl (l : list α) : l ≤ l :=
    ⟨[], by simp⟩
end

-- error:
-- theorem bar (l : list α) : l ≤ l :=
--   ⟨[], by simp⟩
