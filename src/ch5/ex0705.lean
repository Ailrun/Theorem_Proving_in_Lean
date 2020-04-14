variables (x y z w : ℕ) (p : ℕ → Prop)

local attribute [simp] mul_comm mul_assoc mul_left_comm

example : x * y + z * w  * x = x * w * z + y * x :=
  by simp [add_comm]
-- lean 3.6 removes simp attributes from add_comm
-- i.e., now it is required to provide that lemma to solve this example.

example (h : p (x * y + z * w  * x)) : p (x * w * z + y * x) :=
begin
  simp [add_comm],
  simp at h,
  assumption
end
-- lean 3.6 removes simp attributes from add_comm
-- i.e., now it is required to provide that lemma to solve this example.
