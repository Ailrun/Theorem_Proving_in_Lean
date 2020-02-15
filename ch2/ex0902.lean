namespace hidden
  universe u
  constant list : Type u → Type u

  namespace list
    constant cons : Π α : Type u, α → list α → list α
    constant nil : Π α : Type u, list α
    constant append : Π α : Type u, list α → list α → list α
  end list
end hidden

open hidden.list

variable α : Type
variable a : α
variables l1 l2 : hidden.list α

#check cons α a (nil α)
#check append α (cons α a (nil α)) l1
#check append α (append α (cons α a (nil α)) l1) l2

