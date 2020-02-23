example (p q : Prop) (hp : p) : p ∨ q :=
  by { left, assumption } <|> { right, assumption }

example (p q : Prop) (hq : q) : p ∨ q :=
  by { left, assumption } <|> { right, assumption }
