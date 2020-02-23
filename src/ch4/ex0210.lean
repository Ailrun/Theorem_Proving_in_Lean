variables x y z : ℤ

example (x y z : ℕ) : x * (y + z) = x * y + x * z := mul_add x y z
example (x y z : ℕ) : (x + y) * z = x * z + y * z := add_mul x y z
example (x y z : ℕ) : x + y + z = x + (y + z) := add_assoc x y z

example (x y : ℕ) :
  (x + y) * (x + y) = x * x + y * x + x * y + y * y :=
  have h1 : (x + y) * (x + y) = (x + y) * x + (x + y) * y,
    from mul_add (x + y) x y,
  have h2 : (x + y) * (x + y) = x * x + y * x + (x * y + y * y),
    from add_mul x y x ▸ add_mul x y y ▸ h1,
  h2.trans (add_assoc (x * x + y * x) (x * y) (y * y)).symm
