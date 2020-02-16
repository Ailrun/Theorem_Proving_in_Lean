open classical

variables p q r s : Prop

example : (p → r ∨ s) → ((p → r) ∨ (p → s)) :=
  assume h,
  by_cases
    (assume hp,
      (h hp).elim
        (assume hr, or.inl (λ hp, hr))
        (assume hr, or.inr (λ hp, hr)))
    (assume hnp,
      or.inl (λ hp, absurd hp hnp))
example : ¬(p ∧ q) → ¬p ∨ ¬q :=
  assume h,
  by_cases
    (assume hp,
      suffices hnq : ¬q, from or.inr hnq,
      assume hq,
      h ⟨hp, hq⟩)
    (assume hnp,
      or.inl hnp)
example : ¬(p → q) → p ∧ ¬q :=
  assume h,
  by_cases
    (assume hp,
      suffices hnq : ¬q, from ⟨hp, hnq⟩,
      assume hq,
      h (λ hp, hq))
    (assume hnp,
      suffices hp2q : p → q, from false.elim (h hp2q),
      assume hp,
      absurd hp hnp)
example : (p → q) → (¬p ∨ q) :=
  assume hp2q,
  by_cases
    (assume hp,
      or.inr (hp2q hp))
    (assume hnp,
      or.inl hnp)
example : (¬q → ¬p) → (p → q) :=
  assume hnq2np hp,
  by_cases
    id
    (assume hnq,
      absurd hp (hnq2np hnq))
example : p ∨ ¬p := em p
example : (((p → q) → p) → p) :=
  assume h,
  by_contradiction
    (assume hnp,
      have hp : p, from h (λ hp, absurd hp hnp),
      hnp hp)
