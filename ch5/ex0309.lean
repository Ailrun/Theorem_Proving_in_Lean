example (p q : Prop) : p ∧ ¬ p → q :=
begin
  intro h,
  cases h,
  contradiction
end
