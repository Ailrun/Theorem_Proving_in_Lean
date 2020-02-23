variables p q r : Prop

-- commutativity of ∧ and ∨
example : p ∧ q ↔ q ∧ p :=
  ⟨λ h, ⟨h.right, h.left⟩, λ h, ⟨h.right, h.left⟩⟩
example : p ∨ q ↔ q ∨ p :=
  ⟨λ h, h.elim (λ hp, or.inr hp) (λ hq, or.inl hq), λ h, h.elim (λ hp, or.inr hp) (λ hq, or.inl hq)⟩

-- associativity of ∧ and ∨
example : (p ∧ q) ∧ r ↔ p ∧ (q ∧ r) :=
  ⟨λ h, ⟨h.left.left, h.left.right, h.right⟩, λ h, ⟨⟨h.left, h.right.left⟩, h.right.right⟩⟩
example : (p ∨ q) ∨ r ↔ p ∨ (q ∨ r) :=
  ⟨λ h,
    h.elim
      (assume hpq,
        hpq.elim
          (assume hp, or.inl hp)
          (assume hq, or.inr (or.inl hq)))
      (assume hr,
        or.inr (or.inr hr)),
   λ h,
     h.elim
       (assume hp, or.inl (or.inl hp))
       (assume hqr,
         hqr.elim
           (assume hq, or.inl (or.inr hq))
           (assume hr, or.inr hr))⟩

-- distributivity
example : p ∧ (q ∨ r) ↔ (p ∧ q) ∨ (p ∧ r) :=
  ⟨λ h,
    h.right.elim
      (assume hq, or.inl ⟨h.left, hq⟩)
      (assume hr, or.inr ⟨h.left, hr⟩),
   λ h,
    h.elim
      (assume hpq, ⟨hpq.left, or.inl hpq.right⟩)
      (assume hpr, ⟨hpr.left, or.inr hpr.right⟩)⟩
example : p ∨ (q ∧ r) ↔ (p ∨ q) ∧ (p ∨ r) :=
  ⟨λ h,
    h.elim
      (assume hp, ⟨or.inl hp, or.inl hp⟩)
      (assume hqr, ⟨or.inr hqr.left, or.inr hqr.right⟩),
   λ h,
    h.left.elim
      (assume hp, or.inl hp)
      (assume hq,
        h.right.elim
          (assume hp, or.inl hp)
          (assume hr, or.inr ⟨hq, hr⟩))⟩

-- other properties
example : (p → (q → r)) ↔ (p ∧ q → r) :=
  ⟨λ h hpq, h hpq.left hpq.right, λ h hp hq, h ⟨hp, hq⟩⟩
example : ((p ∨ q) → r) ↔ (p → r) ∧ (q → r) :=
  ⟨λ h, ⟨λ hp, h (or.inl hp), λ hq, h (or.inr hq)⟩,
   λ h hpq,
     hpq.elim
       (assume hp, h.left hp)
       (assume hq, h.right hq)⟩
example : ¬(p ∨ q) ↔ ¬p ∧ ¬q :=
  ⟨λ h, ⟨λ hp, h (or.inl hp), λ hq, h (or.inr hq)⟩, λ h hpq, hpq.elim h.left h.right⟩
example : ¬p ∨ ¬q → ¬(p ∧ q) :=
  assume h hpq,
  h.elim
    (assume hnp, hnp hpq.left)
    (assume hnq, hnq hpq.right)
example : ¬(p ∧ ¬p) := λ h, h.right h.left
example : p ∧ ¬q → ¬(p → q) :=
  assume hpnq hp2q,
  suffices hq : q, from hpnq.right hq,
  show q, from hp2q hpnq.left
example : ¬p → (p → q) := λ hnp hp, absurd hp hnp
example : (¬p ∨ q) → (p → q) :=
  assume hnpq hp,
  hnpq.elim
    (assume hnp, absurd hp hnp)
    (assume hq, hq)
example : p ∨ false ↔ p :=
  ⟨λ h, h.elim id false.elim, λ h, or.inl h⟩
example : p ∧ false ↔ false :=
  ⟨λ h, h.right, λ h, false.elim h⟩
example : ¬(p ↔ ¬p) :=
  assume h,
  suffices hnp : ¬p, from hnp (h.mpr hnp),
  assume hp,
  h.mp hp hp
example : (p → q) → (¬q → ¬p) :=
  assume hp2q hnq hp,
  hnq (hp2q hp)
