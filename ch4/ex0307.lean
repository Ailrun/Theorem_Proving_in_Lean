example (x y : ℕ) : (x + y) * (x + y) = x * x + y * x + x * y + y * y :=
  calc
    (x + y) * (x + y)     = (x + y) * x + (x + y) * y       : by rw mul_add
                      ... = x * x + y * x + (x + y) * y     : by rw add_mul
                      ... = x * x + y * x + (x * y + y * y) : by rw add_mul
                      ... = x * x + y * x + x * y + y * y   : by rw ←add_assoc
