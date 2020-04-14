import data.list.basic

universe u
variable {α : Type}
open list

example (xs : list ℕ) :
  reverse (xs ++ [1, 2, 3]) = [3, 2, 1] ++ reverse xs :=
  by simp

example (xs ys : list α) :
  length (reverse (xs ++ ys)) = length xs + length ys :=
  by simp [add_comm]
-- lean 3.6 removes simp attributes from add_comm
-- i.e., now it is required to provide that lemma to solve this example.
