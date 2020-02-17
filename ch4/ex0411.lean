open classical

variables (α : Type) (p : α → Prop)

example (h : ¬ ∀ x, ¬ p x) : ∃ x, p x :=
  by_contradiction
    (assume h1 : ¬ ∃ x, p x,
      have h2 : ∀ x, ¬ p x, from
        assume x,
        assume h3 : p x,
        have h4 : ∃ x, p x, from ⟨x, h3⟩,
        show false, from h1 h4,
      show false, from h h2)
