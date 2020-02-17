example : ∃ a : ℕ, a = a :=
begin
  fapply exists.intro,
  exact 0,
  reflexivity
end
