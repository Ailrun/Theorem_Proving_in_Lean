example : ∀ a b c : ℕ, a = b → a = c → c = b :=
begin
  intros,
  transitivity a,
  symmetry,
  assumption,
  assumption
end
