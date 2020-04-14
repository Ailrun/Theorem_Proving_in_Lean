-- constant and : Prop → Prop → Prop
-- constant or : Prop → Prop → Prop
-- constant not : Prop → Prop → Prop
-- constant implies : Prop → Prop → Prop

variables p q r : Prop
#check and p q
#check or (and p q) r
#check implies (and p q) (and q p)

