constants α β γ : Type
constant f : α → β
constant g : β → γ
constant h : α → α
constants (a : α) (b : β)

#check (λ x : α, x) a
#check (λ x : α, b) a
#check (λ x : α, b) (h a)
#check (λ x : α, g (f x)) (h (h a))

