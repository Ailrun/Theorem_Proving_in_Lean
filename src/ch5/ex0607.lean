universe u

def tuple (α : Type u) (n : ℕ) :=
  { l : list α // list.length l = n }

variables {α : Type u} {n : ℕ}

example (h : n = 0) (t : tuple α n) : tuple α 0 :=
begin
  rw h at t,
  exact t
end
