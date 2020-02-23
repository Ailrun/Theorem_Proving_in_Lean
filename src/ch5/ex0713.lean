import data.list.basic
open list
universe u
variables {α : Type} (x y z : α) (xs ys zs : list α)

def mk_symm (xs : list α) := xs ++ reverse xs
