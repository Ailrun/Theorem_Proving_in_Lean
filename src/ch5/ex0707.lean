def f (m n : ℕ) : ℕ := m + n + m

example {m n : ℕ} (h : n = 1) (h' : 0 = m) : (f m n) = n :=
by simp [h, h'.symm, f]
