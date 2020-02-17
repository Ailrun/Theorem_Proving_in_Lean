variables x y z w : ℕ

example (h₁ : x = y) (h₂ : y = z) (h₃ : z = w) : x = w :=
begin
  apply eq.trans h₁,
  apply eq.trans h₂,
  assumption
end
