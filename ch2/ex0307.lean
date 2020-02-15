constants α β γ : Type
constant f : α → β
constant g : β → γ
constant h : α → α
constants (a : α) (b : β)

#reduce (λ x : α, x) a
#reduce (λ x : α, b) a
#reduce (λ x : α, b) (h a)
#reduce (λ x : α, g (f x)) a
#reduce (λ (v : β → γ) (u : α → β) x, v (u x)) g f a
#reduce (λ (Q R S : Type) (v : R → S) (u : Q → R) (x : Q), v (u x)) α β γ g f a

