variable α : Type
variables a b : α
variables f g : α → ℕ
variable h₁ : a = b
variable h₂ : f = g

example : f a = f b := congr_arg f h₁
example : f a = g a := congr_fun h₂ a
example : f a = g b := congr h₂ h₁
