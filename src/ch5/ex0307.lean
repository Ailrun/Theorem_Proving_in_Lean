universes u v

def swap_pair {α : Type u} {β : Type v} : α × β → β × α :=
begin
  intro p,
  cases p with ha hb,
  constructor, exact hb, exact ha
end

def swap_sum {α : Type u} {β : Type v} : α ⊕ β → β ⊕ α :=
begin
  intro p,
  cases p with ha hb,
    right, exact ha,
    left, exact hb
end
