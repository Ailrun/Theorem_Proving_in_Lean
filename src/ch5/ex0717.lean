import data.list.basic
open list
universe u
variables {α : Type} (x y z : α) (xs ys zs : list α)

def mk_symm (xs : list α) := xs ++ reverse xs

@[simp] theorem reverse_mk_symm (xs : list α) :
  reverse (mk_symm xs) = mk_symm xs :=
  by simp [mk_symm]

example (xs ys : list ℕ) :
  reverse (xs ++ mk_symm ys) = mk_symm ys ++ reverse xs :=
  by simp

example (xs ys : list ℕ) (p : list ℕ → Prop) (h : p (reverse (xs ++ (mk_symm ys)))) :
  p (mk_symm ys ++ reverse xs) :=
  by simp at h; assumption
