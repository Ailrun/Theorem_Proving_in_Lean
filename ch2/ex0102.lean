constants m n : nat

constant f : nat → nat
constant f' : nat -> nat
constant f'' : ℕ → ℕ
constant p : nat × nat
constant q : prod nat nat
constant g : nat → nat → nat
constant g' : nat → (nat → nat)
constant h : nat × nat → nat

constant F : (nat → nat) → nat

#check f
#check f n
#check g m n
#check (m, n)
#check p.1
#check p.2
#check (m, n).1
#check (p.1, n)
#check F f

