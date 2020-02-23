variables (α : Type) (p q : α → Prop)

example : (∀ x : α, p x ∧ q x) → ∀ x : α, p x :=
  assume h : ∀ x : α, p x ∧ q x,
  assume z : α,
  show p z, from (h z).left
