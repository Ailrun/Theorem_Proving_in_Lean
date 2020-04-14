variables {α : Type} [comm_ring α]

local attribute [simp] mul_comm mul_assoc mul_left_comm

example (x y z : α) : (x - x) * y + z = z :=
begin
  simp [sub_eq_add_neg]
end
-- lean 3.6 removes simp attributes from sub_eq_add_neg
-- i.e., now it is required to provide that lemma to solve this example.

example (x y z w : α) : x * y + z * w  * x = x * w * z + y * x :=
  by simp [add_comm]
-- lean 3.6 removes simp attributes from add_comm
-- i.e., now it is required to provide that lemma to solve this example.
