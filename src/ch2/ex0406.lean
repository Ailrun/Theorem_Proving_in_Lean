def curry (α β γ : Type) (f : α × β → γ) : α → β → γ := λ a b, f (a, b)

def uncurry (α β γ : Type) (f : α → β → γ) : α × β → γ := λ ab, f ab.1 ab.2
