variables {α : Type} [comm_ring α]

local attribute [simp] mul_comm mul_assoc mul_left_comm

example (x y z : α) : (x - x) * y + z = z :=
begin
  simp
end

example (x y z w : α) : x * y + z * w  * x = x * w * z + y * x :=
  by simp
