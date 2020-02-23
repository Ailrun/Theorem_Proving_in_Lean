variable f : ℕ → ℕ
variable h : ∀ x : ℕ, f x ≤ f (x + 1)

example : f 0 ≤ f 3 :=
  have f 0 ≤ f 1, from h 0,
  have f 0 ≤ f 2, from le_trans this (h 1),
  show f 0 ≤ f 3, from le_trans this (h 2)
