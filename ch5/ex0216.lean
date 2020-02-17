example (x y : ℕ) (h : x = y) : y = x :=
begin
  revert x y,
  intros,
  symmetry,
  assumption
end
