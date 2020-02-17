variable f : ℕ → ℕ
variable h : ∀ x : ℕ, f x ≤ f (x + 1)

example : f 0 ≤ f 3 :=
  have f 0 ≤ f 1, from h 0,
  have f 1 ≤ f 2, from h 1,
  have f 2 ≤ f 3, from h 2,
  show f 0 ≤ f 3, from
    le_trans ‹f 0 ≤ f 1›
      (le_trans ‹f 1 ≤ f 2› ‹f 2 ≤ f 3›)
