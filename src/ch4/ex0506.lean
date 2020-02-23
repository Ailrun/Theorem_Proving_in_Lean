variable f : ℕ → ℕ
variable h : ∀ x : ℕ, f x ≤ f (x + 1)

example : f 0 ≥ f 1 → f 0 = f 1 :=
  assume : f 0 ≥ f 1,
  show f 0 = f 1, from le_antisymm (h 0) this
