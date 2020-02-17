variables (α : Type) (p q : α → Prop)

example : (∀ x, p x ∧ q x) ↔ (∀ x, p x) ∧ (∀ x, q x) :=
  ⟨λ h, ⟨λ x, (h x).left, λ x, (h x).right⟩, λ ⟨hup, huq⟩ x, ⟨hup x, huq x⟩⟩
example : (∀ x, p x → q x) → (∀ x, p x) → (∀ x, q x) :=
  assume hpq hp x,
  hpq x (hp x)
example : (∀ x, p x) ∨ (∀ x, q x) → ∀ x, p x ∨ q x :=
  assume : (∀ x, p x) ∨ (∀ x, q x),
  this.elim
    (assume : ∀ x, p x,
      assume : α,
      or.inl (‹∀ x, p x› (by assumption)))
    (assume : ∀ x, q x,
      assume : α,
      or.inr (‹∀ x, q x› (by assumption)))
