import data.list.basic

universe u
variable {α : Type}
open list

example (xs : list ℕ) :
  reverse (xs ++ [1, 2, 3]) = [3, 2, 1] ++ reverse xs :=
  by simp

example (xs ys : list α) :
  length (reverse (xs ++ ys)) = length xs + length ys :=
  by simp
