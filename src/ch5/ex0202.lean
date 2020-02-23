example (α : Type) : α → α :=
begin
  intro a,
  exact a
end

example (α : Type) : ∀ x : α, x = x :=
begin
  intro x,
  exact eq.refl x
end
