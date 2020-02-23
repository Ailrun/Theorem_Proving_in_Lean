example (p q r : Prop) (hp : p) (hq : q) (hr : r) :
  p ∧ ((p ∧ q) ∧ r) ∧ (q ∧ r ∧ p) :=
begin
  repeat { any_goals { split } },
  all_goals { assumption }
end
