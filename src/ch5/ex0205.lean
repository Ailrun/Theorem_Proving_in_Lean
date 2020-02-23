variables x y z w : ℕ

example (h₁ : x = y) (h₂ : y = z) (h₃ : z = w) : x = w :=
begin
  apply eq.trans,
  assumption,
  apply eq.trans,
  assumption,
  assumption
end
