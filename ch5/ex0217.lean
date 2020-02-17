example : 3 = 3 :=
begin
  generalize : 3 = x,
  revert x,
  intro y,
  reflexivity
end
