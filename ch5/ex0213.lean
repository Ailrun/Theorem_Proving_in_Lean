example (x : ℕ) : x = x :=
begin
  revert x,
  intro y,
  reflexivity
end
