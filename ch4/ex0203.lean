universe u
variables (α : Type u) (a b c d : α)
variables (hab : a = b) (hcb : c = b) (hcd : c = d)

example : a = d := eq.trans (eq.trans hab (eq.symm hcb)) hcd
