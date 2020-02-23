example (p q r : Prop) (hp : p) : (p ∨ q ∨ r) ∧ (q ∨ p ∨ r) ∧ (q ∨ r ∨ p) :=
  by { repeat { any_goals { split } }; repeat { { left, assumption } <|> right <|> assumption } }
