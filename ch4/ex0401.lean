open nat

example : ∃ x : ℕ, x > 0 :=
have h : 1 > 0, from zero_lt_succ 0,
exists.intro 1 h

example (x : ℕ) (h : x > 0) : ∃ y, y < x :=
exists.intro 0 h

example (x y z : ℕ) (hxy : x < y) (hyz : y < z) :
  ∃ w, x < w ∧ w < z :=
exists.intro y (and.intro hxy hyz)

#check @exists.intro

