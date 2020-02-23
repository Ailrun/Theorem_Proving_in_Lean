variable p : Prop

example : ¬(p ↔ ¬p) :=
  assume h,
  suffices hnp : ¬p, from hnp (h.mpr hnp),
  assume hp,
  h.mp hp hp
