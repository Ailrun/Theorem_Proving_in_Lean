example (a b c : ℕ) : a + b + c = a + c + b :=
begin
  rw [add_assoc, add_comm b, ←add_assoc]
end

example (a b c : ℕ) : a + b + c = a + c + b :=
begin
  rw [add_assoc, add_assoc, add_comm b]
end

example (a b c : ℕ) : a + b + c = a + c + b :=
begin
  rw [add_assoc, add_assoc, add_comm _ b]
end
