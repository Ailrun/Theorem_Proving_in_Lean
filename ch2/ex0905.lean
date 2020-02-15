universe u
def ident {α : Type u} (x : α) := x

variables α β : Type u
variables (a : α) (b : β)

#check ident
#check ident a
#check ident b

