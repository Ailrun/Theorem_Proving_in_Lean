universe u

section
  variable {α : Type u}
  variable x : α
  def ident := x
end

variables α β : Type u
variables (a : α) (b : β)

#check ident
#check ident a
#check ident b

