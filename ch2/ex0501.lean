#check let y := 2 + 2 in y * y
#reduce let y := 2 + 2 in y * y

def t (x : ℕ) : ℕ :=
let y := x + x in y * y

#reduce t 2

