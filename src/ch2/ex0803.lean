universe u
constant vec : Type u → ℕ → Type u

namespace vec
  constant empty : Π α : Type u, vec α 0
  constant cons : Π (α : Type u) (n : ℕ), α → vec α n → vec α (n + 1)
  constant append : Π (α : Type u) (n m : ℕ), vec α n → vec α m → vec α (n + m)
end vec
