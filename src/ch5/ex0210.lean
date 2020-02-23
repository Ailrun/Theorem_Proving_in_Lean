example : ∀ a b c : ℕ, a = b → a = c → c = b :=
begin
  intros,
  apply eq.trans,
  apply eq.symm,
  repeat { assumption }
end
