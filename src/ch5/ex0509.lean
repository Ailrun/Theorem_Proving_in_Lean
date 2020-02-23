example (p q r : Prop) (hp : p) (hq : q) (hr : r) : p ∧ q ∧ r :=
begin
  split,
  any_goals { split },
  any_goals { assumption }
end
