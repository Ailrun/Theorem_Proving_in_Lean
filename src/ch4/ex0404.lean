variables (α : Type) (p q : α → Prop)

example (h : ∃ x, p x ∧ q x) : ∃ x, q x ∧ p x :=
  exists.elim h
    (assume w,
      assume hw : p w ∧ q w,
      show ∃ x, q x ∧ p x, from ⟨w, hw.right, hw.left⟩)
