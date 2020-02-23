variables (men : Type) (barber : men)
variable (shaves : men → men → Prop)

example (h : ∀ x : men, shaves barber x ↔ ¬ shaves x x) : false :=
  have hb : shaves barber barber ↔ ¬ shaves barber barber, from h barber,
  have ¬ shaves barber barber, from
    assume : shaves barber barber,
    hb.mp this this,
   ‹¬ shaves barber barber› (hb.mpr ‹¬ shaves barber barber›)
