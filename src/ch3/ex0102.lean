constant Proof : Prop → Type

constant and_comm : Π p q : Prop,
  Proof (implies (and p q) (and q p))

variables p q : Prop
#check and_comm p q

