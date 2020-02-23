open classical

variable p : Prop

example (h : ¬¬p) : p :=
  by_contradiction
    (assume h1 : ¬p,
      show false, from h h1)
