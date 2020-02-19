example (p q : ℕ → Prop) :
  (∃ x, p x ∧ q x) → ∃ x, q x ∧ p x :=
begin
  intro h,
  cases h with x hpqx,
  cases hpqx with hpx hqx,
  existsi x, split; assumption
end
