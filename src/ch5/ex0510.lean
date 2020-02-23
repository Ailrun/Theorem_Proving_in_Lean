example (p q r : Prop) (hp : p) (hq : q) (hr : r) : p ∧ q ∧ r :=
begin
  repeat { any_goals { split } },
  all_goals { assumption }
end
