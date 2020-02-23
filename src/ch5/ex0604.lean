variables (f : ℕ → ℕ) (a b : ℕ)

example (h₁ : a = b) (h₂ : f a = 0) : f b = 0 :=
begin
  rw [←h₁, h₂]
end
