variables (a b c d e : ℕ)
variable h1 : a = b
variable h2 : b = c + 1
variable h3 : c = d
variable h4 : e = 1 + d

include h1 h2 h3 h4
theorem T : a = e :=
  by simp [h1, h2, h3, h4, add_comm]
-- lean 3.6 removes simp attributes from add_comm
-- i.e., now it is required to provide that lemma to solve this theorem.
