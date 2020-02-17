variables {p q : Prop} (hp : p) (hq : q)

section
  include hp hq

  example : p ∧ q ∧ p :=
  begin
    apply and.intro hp,
    exact and.intro hq hp
  end
end
