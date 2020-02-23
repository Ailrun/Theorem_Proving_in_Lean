variables p q : Prop

example (hp : p) (hq : q) : p ∧ q := and.intro hp hq

#check assume (hp : p) (hq : q), and.intro hp hq

