variables (a b c d e : ℕ)
variable h1 : a = b
variable h2 : b = c + 1
variable h3 : c = d
variable h4 : e = 1 + d

theorem T : a = e :=
  calc
    a     = b     : h1
      ... = c + 1 : h2
      ... = d + 1 : congr_arg _ h3
      ... = 1 + d : add_comm _ _
      ... = e     : h4.symm
