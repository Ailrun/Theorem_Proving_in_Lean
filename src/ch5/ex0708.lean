variables (f : ℕ → ℕ) (k : ℕ)

example (h₁ : f 0 = 0) (h₂ : k = 0) : f k = 0 :=
  by simp [h₁, h₂]
