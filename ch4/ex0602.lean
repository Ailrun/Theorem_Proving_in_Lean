open classical

variables (α : Type) (p q : α → Prop)
variable r : Prop

example : α → ((∀ x : α, r) ↔ r) :=
  assume : α,
  ⟨λ h, h this, λ r x, r⟩
example : (∀ x, p x ∨ r) ↔ (∀ x, p x) ∨ r :=
  ⟨λ h,
     by_cases
       (λ hr, or.inr hr)
       (assume hnr : ¬r,
         or.inl
           (assume x : α,
             (h x).elim
               id
               (λ hr, absurd hr hnr))),
   λ h x, h.elim (λ f, or.inl (f x)) or.inr⟩
example : (∀ x, r → p x) ↔ (r → ∀ x, p x) :=
  ⟨λ h r x, h x r, λ h x r, h r x⟩
