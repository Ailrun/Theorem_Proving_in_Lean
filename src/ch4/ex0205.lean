universe u
variables (α β : Type u)

example (f : α → β) (a : α) : (λ x, f x) a = f a := eq.refl _
example (a : α) (b : α) : (a, b).1 = a := eq.refl _
example : 2 + 3 = 5 := eq.refl _

