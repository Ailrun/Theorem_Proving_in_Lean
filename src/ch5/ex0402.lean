example (p q r : Prop) : p ∧ (q ∨ r) ↔ (p ∧ q) ∨ (p ∧ r) :=
begin
  apply iff.intro,
    intro h,
    cases h.right with hq hr,
      exact or.inl ⟨h.left, hq⟩,
      exact or.inr ⟨h.left, hr⟩,
    intro h,
    cases h with hpq hpr,
      exact ⟨hpq.left, or.inl hpq.right⟩,
      exact ⟨hpr.left, or.inr hpr.right⟩
end
