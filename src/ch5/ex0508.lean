example (p q r : Prop) (hp : p) (hq : q) (hr : r) : p ∧ q ∧ r :=
begin
  split,
  all_goals { try { split } },
  all_goals { assumption }
end
