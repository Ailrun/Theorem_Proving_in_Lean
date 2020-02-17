theorem T2 (a b c d : ℕ) (h1 : a = b) (h2 : b ≤ c) (h3 : c + 1 < d) : a < d :=
  calc
    a     = b     : h1
      ... < b + 1 : nat.lt_succ_self b
      ... ≤ c + 1 : nat.succ_le_succ h2
      ... < d     : h3
