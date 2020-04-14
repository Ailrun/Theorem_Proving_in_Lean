example (x y : ℕ) : (x + y) * (x + y) = x * x + y * x + x * y + y * y :=
  by rw [mul_add, add_mul, add_mul, ←add_assoc]

example (x y : ℕ) : (x + y) * (x + y) = x * x + y * x + x * y + y * y :=
  by simp [mul_add, add_mul, add_left_comm]
-- lean 3.6 removes simp attributes from add_left_comm
-- i.e., now it is required to provide that lemma to solve this example.
