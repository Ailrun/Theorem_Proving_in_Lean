def double (x : ℕ) : ℕ := x + x
#print double
#check double 3
#reduce double 3

def square (x : ℕ) := x * x
#print square
#check square 3
#reduce square 3

def do_twice (f : ℕ → ℕ) (x : ℕ) : ℕ := f (f x)

#reduce do_twice double 2

