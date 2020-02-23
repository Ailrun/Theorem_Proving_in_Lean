example (p q r : Prop) : p ∧ (q ∨ r) → (p ∧ q) ∨ (p ∧ r) :=
begin
  intro h,
  cases h with hp hqr,
  show (p ∧ q) ∨ (p ∧ r),
  cases hqr with hq hr,
    have hpq : p ∧ q,
      from and.intro hp hq,
    left, exact hpq,
    have hpr : p ∧ r,
      from and.intro hp hr,
    right, exact hpr
end
