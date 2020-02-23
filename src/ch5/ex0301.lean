example (p q : Prop) : p ∨ q → q ∨ p :=
begin
  intro h,
  cases h with hp hq,
  right, exact hp,
  left, exact hq
end
