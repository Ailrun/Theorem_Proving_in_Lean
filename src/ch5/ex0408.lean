example (p q r : Prop) : p ∧ (q ∨ r) → (p ∧ q) ∨ (p ∧ r) :=
begin
  intro h,
  cases h with hp hqr,
  show (p ∧ q) ∨ (p ∧ r),
  cases hqr with hq hr,
    have hpq : p ∧ q,
      split; assumption,
    left, exact hpq,
    have hpr : p ∧ r,
      split; assumption,
    right, exact hpr
end
