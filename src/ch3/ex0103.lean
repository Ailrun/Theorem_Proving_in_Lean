constant Proof : Prop → Type

constant modus_ponens : Π p q : Prop, Proof (implies p q) → Proof p → Proof q
