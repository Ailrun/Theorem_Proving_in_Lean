example (u w x y z : ℕ) (h₁ : x = y + z) (h₂ : w = u + x) :
  w = z + y + u :=
  by simp [add_comm, *]
-- lean 3.6 removes simp attributes from add_comm
-- i.e., now it is required to provide that lemma to solve this example.
