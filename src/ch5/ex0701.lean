variables (x y z : ℕ) (p : ℕ → Prop)
variable  (h : p (x * y))

example : (x + 0) * (0 + y * 1 + z * 0) = x * y :=
  by simp

include h
example : p ((x + 0) * (0 + y * 1 + z * 0)) :=
  by { simp, assumption }
