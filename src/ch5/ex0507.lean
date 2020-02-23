example (p q r : Prop) (hp : p) (hq : q) (hr : r) : p ∧ q ∧ r :=
  by split; try { split }; assumption
