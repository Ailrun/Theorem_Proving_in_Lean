namespace hidden
  variables {α : Type} (r : α → α → Prop)

  definition reflexive : Prop := ∀ (a : α), r a a
  definition symmetric : Prop := ∀ {a b : α}, r a b → r b a
  definition transitive : Prop := ∀ {a b c : α}, r a b → r b c → r a c
  definition euclidean : Prop := ∀ {a b c : α}, r a b → r a c → r b c

  variable {r}

  theorem th1 (reflr : reflexive r) (euclr : euclidean r) : symmetric r :=
    assume (a b : α), assume : (r a b),
    show r b a, from euclr this (reflr _)

  theorem th2 (symmr : symmetric r) (euclr : euclidean r) : transitive r :=
    assume (a b c : α), assume (rab : r a b) (rbc : r b c),
    euclr (symmr rab) rbc

  -- error:
  /-
  theorem th3 (reflr : reflexive r) (euclr : euclidean r) : transitive r :=
    th2 (th1 reflr euclr) euclr
  -/

  theorem th3 (reflr : reflexive r) (euclr : euclidean r) : transitive r :=
    @th2 _ _ (@th1 _ _ reflr @euclr) @euclr
end hidden
