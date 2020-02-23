example (p q : Prop) : p ∧ q → q ∧ p :=
begin
  intro h,
  cases h with hp hq,
  split,
  show q, from hq,
  show p, from hp,
end

example (p q : Prop) : p ∧ q → q ∧ p :=
begin
  intro h,
  cases h with hp hq,
  split,
  show p, from hp,
  show q, from hq
end
