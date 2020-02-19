example (p q r : Prop) : p ∧ (q ∨ r) ↔ (p ∧ q) ∨ (p ∧ r) :=
begin
  apply iff.intro,
    intro h,
    cases h with hp hqr,
    cases hqr with hq hr,
      left, constructor, exact hp, exact hq,
      right, constructor, exact hp, exact hr,
    intro h,
    cases h with hpq hpr,
      cases hpq with hp hq,
      constructor, exact hp, left, exact hq,
      cases hpr with hp hr,
      constructor, exact hp, right, exact hr
end
