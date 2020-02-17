open nat

example : ∃ x : ℕ, x > 0 :=
  ⟨1, zero_lt_succ 0⟩
example (x : ℕ) (h : x > 0) : ∃ y, y < x :=
  ⟨0, h⟩
example (x y z : ℕ) (hxy : x < y) (hyz : y < z) : ∃ w, x < w ∧ w < z :=
  ⟨y, hxy, hyz⟩
