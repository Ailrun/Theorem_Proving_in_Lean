section
variables (u w x x' y y' z : ℕ) (p : ℕ → Prop)

example (h₁ : x + 0 = x') (h₂ : y + 0 = y') : x + y + 0 = x' + y' :=
  by { simp at *, simp * }

example (h₁ : x = y + z) (h₂ : w = u + x) (h₃ : p (z + y + u)) : p w :=
  by { simp at *, simp * }
end
