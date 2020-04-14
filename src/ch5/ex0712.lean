section
variables (u w x x' y y' z : ℕ) (p : ℕ → Prop)

example (h₁ : x + 0 = x') (h₂ : y + 0 = y') : x + y + 0 = x' + y' :=
  by { simp at *, simp * }

example (h₁ : x = y + z) (h₂ : w = u + x) (h₃ : p (z + y + u)) : p w :=
  by { simp [add_comm] at *, simp * }
end
-- lean 3.6 removes simp attributes from add_comm
-- i.e., now it is required to provide that lemma to solve this example.
