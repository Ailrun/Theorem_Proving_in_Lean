example (p q r : Prop) : p ∧ (q ∨ r) ↔ (p ∧ q) ∨ (p ∧ r) :=
begin
  apply iff.intro,
  { intro h,
    cases h.right with hq hr,
    { show (p ∧ q) ∨ (p ∧ r),
        exact or.inl ⟨h.left, hq⟩ },
    { show (p ∧ q) ∨ (p ∧ r),
        exact or.inr ⟨h.left, hr⟩ }},
  { intro h,
    cases h with hpq hpr,
    { show p ∧ (q ∨ r),
        exact ⟨hpq.left, or.inl hpq.right⟩ },
    { show p ∧ (q ∨ r),
        exact ⟨hpr.left, or.inr hpr.right⟩ }}
end
