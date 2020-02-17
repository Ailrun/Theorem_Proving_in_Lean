variables (α : Type) (p q : α → Prop)

example : (∀ x : α, p x ∧ q x) -> ∀ y : α, p y :=
  assume h : ∀ x : α, p x ∧ q x,
  assume y : α,
  show p y, from (h y).left
