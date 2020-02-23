open nat

example (P : ℕ → Prop) (h₀ : P 0) (h₁ : ∀ n, P (succ n)) (m : ℕ) :
  P m :=
begin
  cases m with m',
  exact h₀,
  exact h₁ m'
end
