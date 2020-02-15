universe u
constant vec : Type u → ℕ → Type u

constant vec_add : Π {n : ℕ}, vec ℕ n → vec ℕ n → vec ℕ n
constant vec_reverse : Π {α : Type} {n : ℕ}, vec α n -> vec α n
