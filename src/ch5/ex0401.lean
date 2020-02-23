example (p q r : Prop) : p ∧ (q ∨ r) → (p ∧ q) ∨ (p ∧ r) :=
begin
  intro h,
  exact
    have hp: p, from h.left,
    have hqr: q ∨ r, from h.right,
    show (p ∧ q) ∨ (p ∧ r),
    begin
      cases hqr with hq hr,
        exact or.inl ⟨hp, hq⟩,
        exact or.inr ⟨hp, hr⟩
    end
end
