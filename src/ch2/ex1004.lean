universe u
constant vec : Type u → ℕ → Type u
constant matrix : Type u → ℕ → ℕ → Type u

constant matrix_add : Π {n m : ℕ}, matrix ℕ n m → matrix ℕ n m → matrix ℕ n m
constant matrix_multiply : Π {n m l : ℕ}, matrix ℕ n m → matrix ℕ m l → matrix ℕ n l
constant matrix_vec_multiply : Π {n m : ℕ}, matrix ℕ n m → vec ℕ m → vec ℕ n
