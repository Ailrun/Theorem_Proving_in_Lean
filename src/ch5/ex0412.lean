example (p q r : Prop) : p ∧ (q ∨ r) ↔ (p ∧ q) ∨ (p ∧ r) :=
begin
  apply iff.intro,
  begin
    intro h,
    cases h.right with hq hr,
    begin
      show (p ∧ q) ∨ (p ∧ r),
        exact or.inl ⟨h.left, hq⟩,
    end,
      show (p ∧ q) ∨ (p ∧ r),
        exact or.inr ⟨h.left, hr⟩,
  end,
    intro h,
    cases h with hpq hpr,
    begin
      show p ∧ (q ∨ r),
        exact ⟨hpq.left, or.inl hpq.right⟩,
    end,
      show p ∧ (q ∨ r),
        exact ⟨hpr.left, or.inr hpr.right⟩
end
