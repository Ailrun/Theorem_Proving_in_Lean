example (x y : ℕ) (h : x = y) : y = x :=
begin
  revert h,
  intro h₁,
  symmetry,
  assumption
end
