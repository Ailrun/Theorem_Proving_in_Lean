#check sub_self

example (x : ℤ) : x * 0 = 0 :=
  by rw [←sub_self (1 : ℤ), mul_sub, mul_one, sub_self, sub_self]
