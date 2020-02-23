example (p q r : Prop) : p ∧ (q ∨ r) ↔ (p ∧ q) ∨ (p ∧ r) :=
begin
  apply iff.intro,
    intro h,
    cases h.right with hq hr,
      show (p ∧ q) ∨ (p ∧ r),
        { left, split, exact h.left, assumption },
      show (p ∧ q) ∨ (p ∧ r),
        { right, split, exact h.left, assumption },
    intro h,
    cases h with hpq hpr,
      show p ∧ (q ∨ r),
        { cases hpq, split, assumption, left, assumption },
      show p ∧ (q ∨ r),
        { cases hpr, split, assumption, right, assumption }
end
