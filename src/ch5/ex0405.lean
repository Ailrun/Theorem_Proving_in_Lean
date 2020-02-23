example (n : ℕ) : n + 1 = nat.succ n :=
begin
  show nat.succ n = nat.succ n,
  reflexivity,
end
