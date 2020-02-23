example (p q r : Prop) (hp : p) (hq : q) (hr : r) : p ∧ ((p ∧ q) ∧ r) ∧ (q ∧ r ∧ p) :=
  by repeat { any_goals { split <|> assumption} }
