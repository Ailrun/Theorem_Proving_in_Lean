variables (x y z w : ℕ) (p : ℕ → Prop)

local attribute [simp] mul_comm mul_assoc mul_left_comm

example : x * y + z * w  * x = x * w * z + y * x :=
  by simp

example (h : p (x * y + z * w  * x)) : p (x * w * z + y * x) :=
begin
  simp,
  simp at h,
  assumption
end
