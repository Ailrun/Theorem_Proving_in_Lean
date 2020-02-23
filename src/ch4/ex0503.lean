variable f : ℕ → ℕ
variable h : ∀ x : ℕ, f x ≤ f (x + 1)

example : f 0 ≥ f 1 → f 1 ≥ f 2 → f 0 = f 2 :=
  assume : f 0 ≥ f 1,
  assume : f 1 ≥ f 2,
  have f 0 ≥ f 2, from le_trans this ‹f 0 ≥ f 1›,
  have f 0 ≤ f 2, from le_trans (h 0) (h 1),
  show f 0 = f 2, from le_antisymm this ‹f 0 ≥ f 2›
