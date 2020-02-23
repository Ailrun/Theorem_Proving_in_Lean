example (x y : ℕ) (h : x = y) : y = x :=
begin
  revert x,
  intros,
  symmetry,
  assumption
end
