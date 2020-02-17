example (x y : ℕ) : (x + y) * (x + y) = x * x + y * x + x * y + y * y :=
  by rw [mul_add, add_mul, add_mul, ←add_assoc]

example (x y : ℕ) : (x + y) * (x + y) = x * x + y * x + x * y + y * y :=
  by simp [mul_add, add_mul]
