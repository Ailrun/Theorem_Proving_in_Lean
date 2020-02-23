variables (x y z : ℕ) (p : ℕ → Prop)

example (h : p ((x + 0) * (0 + y * 1 + z * 0))) : p (x * y) :=
  by { simp at h, assumption }
