variables (f : ℕ → ℕ) (a : ℕ)

example (h : a + 0 = 0) : f a = f 0 :=
  by { rw add_zero at h, rw h }
