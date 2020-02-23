constants α β γ : Type
constant f : α → β
constant g : β → γ
constant b : β

#check λ x : α, x
#check λ x : α, b
#check λ x : α, g (f x)
#check λ x, g (f x)

