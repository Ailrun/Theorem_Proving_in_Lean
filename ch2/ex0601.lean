def compose (α β γ : Type) (g : β → γ) (f : α → β) (x : α) : γ := g (f x)

def do_twice (α : Type) (h : α → α) (x : α) : α := h (h x)

def do_thrice (α : Type) (h : α → α) (x : α) : α := h (h (h x))
