def is_even (a : ℕ) := ∃ b, a = 2 * b

theorem even_plus_even {a b : ℕ} (h1 : is_even a) (h2 : is_even b) : is_even (a + b) :=
  match h1, h2 with
    ⟨w1, hw1⟩, ⟨w2, hw2⟩ := ⟨w1 + w2, by rw [hw1, hw2, mul_add]⟩
  end
