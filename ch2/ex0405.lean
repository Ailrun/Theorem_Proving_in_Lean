def compose (α β γ : Type) (g : β → γ) (f : α → β) (x : α) : γ := g (f x)
