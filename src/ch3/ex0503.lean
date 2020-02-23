open classical

variable p : Prop

example (h : ¬¬p) : p :=
  by_cases
    (assume h1 : p, h1)
    (assume h1 : ¬p, absurd h1 h)
