universe u

example (α : Type u) (a b : α) (p : α → Prop) (h1 : a = b) (h2 : p a) : p b :=
  eq.subst h1 h2

example (α : Type u) (a b : α) (p : α → Prop) (h1 : a = b) (h2 : p a) : p b :=
  h1 ▸ h2
