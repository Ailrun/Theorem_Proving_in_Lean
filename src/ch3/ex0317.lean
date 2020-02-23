variables p q r : Prop

example (hnp : ¬p) (hq : q) (hqp : q → p) : r := absurd (hqp hq) hnp
