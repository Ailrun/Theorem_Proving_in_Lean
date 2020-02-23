open classical

variables (α : Type) (p q : α → Prop)
variable a : α
variable r : Prop

example : (∃ x : α, r) → r := λ ⟨w, hr⟩, hr
example : r → (∃ x : α, r) := λ hr, ⟨a, hr⟩
example : (∃ x, p x ∧ r) ↔ (∃ x, p x) ∧ r :=
  ⟨λ ⟨w, hpw, hr⟩, ⟨⟨w, hpw⟩, hr⟩, λ ⟨⟨w, hpw⟩, hr⟩, ⟨w, hpw, hr⟩⟩
example : (∃ x, p x ∨ q x) ↔ (∃ x, p x) ∨ (∃ x, q x) :=
  ⟨λ ⟨w, hpqw⟩,
     hpqw.elim
       (λ hpw, or.inl ⟨w, hpw⟩)
       (λ hqw, or.inr ⟨w, hqw⟩),
   λ h,
     h.elim
       (λ ⟨w, hpw⟩, ⟨w, or.inl hpw⟩)
       (λ ⟨w, hqw⟩, ⟨w, or.inr hqw⟩)⟩

example : (∀ x, p x) ↔ ¬ (∃ x, ¬ p x) :=
  ⟨λ h ⟨w, hnpw⟩, hnpw (h w),
   λ hnen x, by_contradiction (λ hnpx, hnen ⟨x, hnpx⟩)⟩
example : (∃ x, p x) ↔ ¬ (∀ x, ¬ p x) :=
  ⟨λ ⟨w, hpw⟩ h, absurd hpw (h w),
   λ hnun, by_contradiction (λ hne, hnun (λ x hpx, hne ⟨x, hpx⟩))⟩
example : (¬ ∃ x, p x) ↔ (∀ x, ¬ p x) :=
  ⟨λ h x hpx, h ⟨x, hpx⟩, λ h ⟨w, hpw⟩, h w hpw⟩
example : (¬ ∀ x, p x) ↔ (∃ x, ¬ p x) :=
  ⟨λ hnu,
     by_contradiction
       (assume hnen : ¬ (∃ x, ¬ p x),
         suffices hu : ∀ x, p x, from hnu hu,
         assume x,
         by_contradiction
           (λ hnpx, hnen ⟨x, hnpx⟩)),
   λ ⟨w, hnpw⟩ hu, hnpw (hu w)⟩

example : (∀ x, p x → r) ↔ (∃ x, p x) → r :=
  ⟨λ h ⟨w, hpw⟩, h w hpw, λ h x hpx, h ⟨x, hpx⟩⟩
example : (∃ x, p x → r) ↔ (∀ x, p x) → r :=
  ⟨λ ⟨w, hpw2r⟩ h, hpw2r (h w),
   λ h,
     by_cases
       (assume hu : ∀ x, p x,
         ⟨a, λ hpa, h hu⟩)
       (assume hnu : ¬ ∀ x, p x,
         by_contradiction
           (assume hne : ¬ ∃ x, p x → r,
             have hu : ∀ x, p x, from
               assume x,
               by_contradiction
                 (assume hnpx : ¬ p x,
                   hne ⟨x, λ hpx, (hnpx hpx).elim⟩),
             hnu hu))⟩
example : (∃ x, r → p x) ↔ (r → ∃ x, p x) :=
  ⟨λ ⟨w, hr2pw⟩ r, ⟨w, hr2pw r⟩,
   λ h,
     by_cases
       (assume hr : r,
         match h hr with
           ⟨w, hpw⟩ := ⟨w, λ hr, hpw⟩
         end)
       (assume hnr : ¬r,
         ⟨a, λ hr, absurd hr hnr⟩)⟩
