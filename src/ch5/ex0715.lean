import data.list.basic
open list
universe u
variables {α : Type} (x y z : α) (xs ys zs : list α)

def mk_symm (xs : list α) := xs ++ reverse xs

theorem reverse_mk_symm (xs : list α) :
  reverse (mk_symm xs) = mk_symm xs :=
  by simp [mk_symm]
