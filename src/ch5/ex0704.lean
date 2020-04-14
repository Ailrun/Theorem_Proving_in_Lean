variables (w x y z : ℕ) (p : ℕ → Prop)

local attribute [simp] mul_comm mul_assoc mul_left_comm

example (h : p (x * y + z * w  * x)) : p (x * w * z + y * x) :=
  by { simp [add_comm] at *, assumption }
-- lean 3.6 removes simp attributes from add_comm
-- i.e., now it is required to provide that lemma to solve this example.

example (h₁ : p (1 * x + y)) (h₂ : p  (x * z * 1)) :
  p (y + 0 + x) ∧ p (z * x) :=
  by { simp [add_comm] at *, split; assumption }
-- lean 3.6 removes simp attributes from add_comm
-- i.e., now it is required to provide that lemma to solve this example.
