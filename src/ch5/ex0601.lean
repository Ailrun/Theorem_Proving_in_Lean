variables (f : ℕ → ℕ) (k : ℕ)

example (h₁ : f 0 = 0) (h₂ : k = 0) : f k = 0 :=
begin
  rw h₂,
  rw h₁
end
