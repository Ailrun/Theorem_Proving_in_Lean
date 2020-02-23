constant Proof : Prop → Type

constant modus_ponens : Π p q : Prop, (Proof p → Proof q) → Proof (implies p q)
