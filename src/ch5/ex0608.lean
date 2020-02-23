universe u

example {α : Type u} [ring α] (a b c : α) : a * 0 + 0 * b + c * 0 + 0 * a = 0 :=
begin
  rw [mul_zero, mul_zero, zero_mul, zero_mul],
  repeat { rw add_zero }
end

example {α : Type u} [group α] {a b : α} (h : a * b = 1) : a⁻¹ = b :=
  by rw [←(mul_one a⁻¹), ←h, inv_mul_cancel_left]
