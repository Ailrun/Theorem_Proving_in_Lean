example : ∀ a b c : ℕ, a = b → a = c → c = b :=
begin
  intros a b c h₁ h₂,
  exact eq.trans (eq.symm h₂) h₁
end
