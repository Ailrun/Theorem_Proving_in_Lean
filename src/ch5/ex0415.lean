example (p q : Prop) : p ∧ q ↔ q ∧ p :=
begin
  apply iff.intro,
  { intro h,
    have hp : p := h.left,
    have hq : q := h.right,
    show q ∧ p,
      exact ⟨hq, hp⟩ },
    intro h,
    have hp : p := h.right,
    have hq : q := h.left,
    show p ∧ q,
      exact ⟨hp, hq⟩
end
