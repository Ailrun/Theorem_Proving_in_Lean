namespace hidden
  universe u
  constant list : Type u → Type u

  namespace list
    constant cons : Π α : Type u, α → list α → list α
    constant nil : Π α : Type u, list α
    constant append : Π α : Type u, list α → list α → list α
  end list
end hidden
