def is_even (a : ℕ) := ∃ b, a = 2 * b

theorem even_plus_even {a b : ℕ} (h1 : is_even a) (h2 : is_even b) : is_even (a + b) :=
  exists.elim h1
    (assume w1,
      assume hw1,
      exists.elim h2
        (assume w2,
          assume hw2,
          exists.intro (w1 + w2)
            (calc
              a + b     = 2 * w1 + 2 * w2 : by rw [hw1, hw2]
                    ... = 2 * (w1 + w2)   : by rw mul_add)))
