example (p q r : Prop) (hp : p) : p ∨ q ∨ r :=
  by repeat { { left, assumption } <|> right <|> assumption }

example (p q r : Prop) (hq : q) : p ∨ q ∨ r :=
  by repeat { { left, assumption } <|> right <|> assumption }

example (p q r : Prop) (hr : r) : p ∨ q ∨ r :=
  by repeat { { left, assumption } <|> right <|> assumption }
