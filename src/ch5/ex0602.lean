example (x y : ℕ) (p : ℕ → Prop) (q : Prop) (h : q → x = y) (h' : p y) (hq : q) : p x :=
  by { rw (h hq), assumption }
