example (p q r : Prop) : p ∧ (q ∨ r) → (p ∧ q) ∨ (p ∧ r) :=
begin
  intro h,
  have hp : p := h.left,
  have hqr : q ∨ r := h.right,
  cases hqr with hq hr,
    exact or.inl ⟨hp, hq⟩,
    exact or.inr ⟨hp, hr⟩
end
