constants α β γ : Type

#check λ b : β, λ x : α, x
#check λ (b : β) (x : α), x
#check λ (g : β → γ) (f : α → β) (x : α), g (f x)

