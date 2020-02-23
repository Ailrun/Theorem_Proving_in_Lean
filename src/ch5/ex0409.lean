example (p q r : Prop) : p ∧ (q ∨ r) → (p ∧ q) ∨ (p ∧ r) :=
begin
  intro h,
  cases h with hp hqr,
  show (p ∧ q) ∨ (p ∧ r),
  cases hqr with hq hr,
    have : p ∧ q,
      split; assumption,
    left, exact this,
    have : p ∧ r,
      split; assumption,
    right, exact this
end
