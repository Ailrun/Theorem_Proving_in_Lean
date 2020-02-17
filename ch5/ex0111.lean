variables {p q : Prop} (hp : p) (hq : q)

example : p ∧ q ∧ p :=
let hp := hp, hq := hq in
begin
  apply and.intro hp,
  exact and.intro hq hp
end
