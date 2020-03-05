namespace ch3_2
  section
    variables p q : Prop

    theorem t1 : p → q → p := by { intros hp hq, assumption }

    section
      variables r : Prop

      theorem t2 (h₁ : q → r) (h₂ : p → q) : p → r :=
        by { intros hp, simp * }
    end
  end
end ch3_2

namespace ch3_3
  section
    variables p q : Prop

    example (hp : p) (hq : q) : p ∧ q := by simp *

    example (h : p ∧ q) : p := by simp *
    example (h : p ∧ q) : q := by simp *

    example (h : p ∧ q) : q ∧ p := by simp *

    section
      variables (hp : p) (hq : q)

      example : p ∧ q := let hp := hp, hq := hq in by simp *
    end

    example (h : p ∧ q) : q ∧ p := by simp *

    example (h : p ∧ q) : q ∧ p ∧ q := by simp *
    example (h : p ∧ q) : q ∧ p ∧ q := by simp *

    example (hp : p) : p ∨ q := by simp *
    example (hq : q) : p ∨ q := by simp *

    example (h : p ∨ q) : q ∨ p := by { cases h with hp hq; simp * }

    example (hpq : p → q) (hnq: ¬q) : ¬p := by { intro hp, have hq := hpq hp, contradiction }

    example (hp : p) (hnp: ¬p) : q := by contradiction

    section
      variables r : Prop

      example (hnp : ¬p) (hq : q) (hqp : q → p) : r := by { have hp := hqp hq, contradiction }
    end

    theorem and_swap : p ∧ q ↔ q ∧ p := by { split; intro h; simp * }
  end
end ch3_3

namespace ch3_5
  open classical

  theorem dne {p : Prop} (h : ¬¬p) : p := by_contradiction (by contradiction)

  section
    variables (p q : Prop)

    example (h : ¬(p ∧ q)) : ¬p ∨ ¬q :=
    begin
      apply by_cases,
        show p → ¬p ∨ ¬q, intro hp, right, intro hq, apply h, simp *,
        show ¬p → ¬p ∨ ¬q, intro hnp, simp *
    end
  end
end ch3_5

namespace ch4_1
  section
    variables (α : Type) (p q : α → Prop)

    example : (∀ x : α, p x ∧ q x) -> ∀ y : α, p y := by { intro hpq, simp * }
  end

  section
    variables (α : Type) (r : α → α → Prop)

    variable refl_r : ∀ x, r x x
    variable symm_r : ∀ {x y}, r x y → r y x
    variable trans_r : ∀ {x y z}, r x y → r y z → r x z

    include refl_r symm_r trans_r
    example (a b c d : α) (hab : r a b) (hcb : r c b) (hcd : r c d) : r a d :=
      begin
        apply trans_r _ hcd,
        apply trans_r hab,
        apply symm_r,
        assumption
      end
  end
end ch4_1

namespace ch4_2
  section
    universe u
    variables (α : Type u) (a b c d : α)
    variables (hab : a = b) (hcb : c = b) (hcd : c = d)

    include hab hcb hcd
    example : a = d := by rw [hab, ←hcb, hcd]
  end

  section
    universe u
    variables (α β : Type u)

    example (f : α → β) (a : α) : (λ x, f x) a = f a := by refl
    example (a : α) (b : α) : (a, b).1 = a := by refl
    example : 2 + 3 = 5 := by refl
  end

  section
    universe u

    example (α : Type u) (a b : α) (p : α → Prop) (h1 : a = b) (h2 : p a) : p b :=
      by { rw ←h1, assumption }
  end

  section
    variable α : Type
    variables a b : α
    variables f g : α → ℕ
    variable h₁ : a = b
    variable h₂ : f = g

    include h₁ h₂
    example : f a = f b := by { simp [h₁] }
    example : f a = g a := by { simp [h₂] }
    example : f a = g b := by { simp [h₁, h₂] }
  end

  section
    variables a b c d : ℤ

    example : a + 0 = a := by simp *
    example : 0 + a = a := by simp *
    example : a * 1 = a := by simp *
    example : 1 * a = a := by simp *
    example : -a + a = 0 := by simp *
    example : a + -a = 0 := by simp *
    example : a - a = 0 := by simp *
    example : a + b = b + a := by simp *
    example : a + b + c = a + (b + c) := by simp *
    example : a * b = b * a := by rw mul_comm
    example : a * b * c = a * (b * c) := by rw mul_assoc
    example : a * (b + c) = a * b + a * c := by rw mul_add
    example : (a + b) * c = a * c + b * c := by rw add_mul
    example : a * (b - c) = a * b - a * c := by rw mul_sub
    example : (a - b) * c = a * c - b * c := by rw sub_mul
  end

  section
    variables x y z : ℤ

    example (x y z : ℕ) : x * (y + z) = x * y + x * z := by rw mul_add
    example (x y z : ℕ) : (x + y) * z = x * z + y * z := by rw add_mul
    example (x y z : ℕ) : x + y + z = x + (y + z) := by rw add_assoc

    example (x y : ℕ) : (x + y) * (x + y) = x * x + y * x + x * y + y * y :=
      by simp [mul_add, add_mul]
  end
end ch4_2

namespace ch4_3
  section
    variables (a b c d e : ℕ)
    variable h1 : a = b
    variable h2 : b = c + 1
    variable h3 : c = d
    variable h4 : e = 1 + d

    include h1 h2 h3 h4
    theorem T : a = e := by simp *
  end

  theorem T2 (a b c d : ℕ) (h1 : a = b) (h2 : b ≤ c) (h3 : c + 1 < d) : a < d :=
  begin
    rw h1,
    apply nat.lt_trans, from nat.lt_succ_self b,
    apply nat.lt_of_le_of_lt, from nat.succ_le_succ h2,
    assumption
  end

  example (x y : ℕ) : (x + y) * (x + y) = x * x + y * x + x * y + y * y :=
    by simp [mul_add, add_mul]
end ch4_3

namespace ch4_4
  open nat

  example : ∃ x : ℕ, x > 0 := by { existsi 1, apply zero_lt_one }

  example (x : ℕ) (h : x > 0) : ∃ y, y < x := by { existsi 0, assumption }

  example (x y z : ℕ) (hxy : x < y) (hyz : y < z) : ∃ w, x < w ∧ w < z :=
    by { existsi y, apply and.intro; assumption }

  section
    variable g : ℕ → ℕ → ℕ
    variable hg : g 0 0 = 0

    include hg
    theorem gex1 : ∃ x, g x x = x := by { existsi 0, assumption }
    theorem gex2 : ∃ x, g x 0 = x := by { existsi 0, assumption }
    theorem gex3 : ∃ x, g 0 0 = x := by { existsi 0, assumption }
    theorem gex4 : ∃ x, g x x = 0 := by { existsi 0, assumption }
  end

  section
    variables (α : Type) (p q : α → Prop)

    example (h : ∃ x, p x ∧ q x) : ∃ x, q x ∧ p x :=
      by { cases h with w hpqw, existsi w, simp * }
  end

  def is_even (a : ℕ) := ∃ b, a = 2 * b

  theorem even_plus_even {a b : ℕ} (h1 : is_even a) (h2 : is_even b) : is_even (a + b) :=
  begin
    cases h1 with n hn,
    cases h2 with m hm,
    existsi (n + m),
    simp [hn, hm, mul_add],
  end

  namespace ch4_4_classical
    open classical

    section
      variables (α : Type) (p : α → Prop)

      example (h : ¬ ∀ x, ¬ p x) : ∃ x, p x :=
        by_contradiction
          begin
            intro,
            have : ∀ x, ¬ p x,
            show false, contradiction,
            intro w, intro,
            have : ∃ x, p x,
            show false, contradiction,
            existsi w, assumption
          end
    end

    section
      variables (α : Type) (p q : α → Prop)
      variable a : α
      variable r : Prop

      include a
      example : (∃ x : α, r) → r := by { intro h, cases h, assumption }
      example : r → (∃ x : α, r) := by { intro h, existsi a, assumption }
      example : (∃ x, p x ∧ r) ↔ (∃ x, p x) ∧ r :=
      begin
        split; intro h;
        repeat { any_goals { cases h with h }};
        repeat { existsi h <|> split };
        simp *
      end
      example : (∃ x, p x ∨ q x) ↔ (∃ x, p x) ∨ (∃ x, q x) :=
      begin
        split; intro h;
        cases h;
        try { cases h; existsi h_w };
        try { cases h_h };
        { left, try { existsi h_w }, assumption } <|> { right, try { existsi h_w }, assumption }
      end

      example : (∀ x, p x) ↔ ¬ (∃ x, ¬ p x) :=
      begin
        split; intro h,
          { intro hnp, cases hnp with w, have := h w, contradiction },
          { intro w, apply by_contradiction,
            intro, apply h, existsi w, assumption }
      end
      example : (∃ x, p x) ↔ ¬ (∀ x, ¬ p x) :=
      begin
        split; intro h,
          { cases h with w hpw, intro hnp, have := hnp w, contradiction },
          { apply by_contradiction,
            intro hne, apply h, intros w hnpw, apply hne, existsi w, assumption }
      end
      example : (¬ ∃ x, p x) ↔ (∀ x, ¬ p x) :=
      begin
        split; intro h,
          { intros w hpw, apply h, existsi w, assumption },
          { intros hp, cases hp with w hpw, apply h; assumption }
      end
      example : (¬ ∀ x, p x) ↔ (∃ x, ¬ p x) :=
      begin
        split; intro h,
          { apply by_contradiction,
            intro hnen, apply h, intro w,
            apply by_contradiction,
            intro hnpw, apply hnen, existsi w, assumption },
          { cases h with w hnpw, intro hup, apply hnpw, simp * }
      end

      example : (∀ x, p x → r) ↔ (∃ x, p x) → r :=
      begin
        split; intros h w; try { intro hpw };
        try { cases w with w hpw };
        apply h; try { existsi w }; assumption
      end
      example : (∃ x, p x → r) ↔ (∀ x, p x) → r :=
      begin
        split; intro h,
          { cases h with w hpw2r, intro hup, simp * },
          { apply by_cases,
            { intro hup,
              have := h hup,
              existsi a, simp * },
            { intro hnup,
              apply by_contradiction,
              intro hnep2r,
              apply hnup,
              intro w,
              apply by_contradiction,
              intro hnpw,
              apply hnep2r,
              existsi w, contradiction }}
      end
      example : (∃ x, r → p x) ↔ (r → ∃ x, p x) :=
      begin
        split; intro h,
          { cases h with w hr2pw, intro hr, existsi w, simp * },
          { apply by_cases,
            { intro hr,
              have := h hr, cases this with w hpw,
              existsi w, simp * },
            { intro hnr, existsi a, contradiction, }
          }
      end
    end
  end ch4_4_classical
end ch4_4

namespace ch4_5
  variable f : ℕ → ℕ
  variable h : ∀ x : ℕ, f x ≤ f (x + 1)

  include h

  example : f 0 ≤ f 3 :=
    by repeat { apply le_trans, from h _, rw [add_comm], simp * }

  example : f 0 ≥ f 1 → f 0 = f 1 :=
    by { intro, apply le_antisymm, simp *, assumption }

  example : f 0 ≥ f 1 → f 1 ≥ f 2 → f 0 = f 2 :=
    begin
      intros, apply le_antisymm; apply le_trans,
        { from h _ },
        { simp * },
      all_goals { assumption }
    end
end ch4_5

namespace ch4_6
  section
    variables (α : Type) (p q : α → Prop)

    example : (∀ x, p x ∧ q x) ↔ (∀ x, p x) ∧ (∀ x, q x) :=
    begin
      split; intros; split; try { intro };
      { apply and.left, simp * } <|> { apply and.right, simp * },
    end
    example : (∀ x, p x → q x) → (∀ x, p x) → (∀ x, q x) :=
      by { intros, simp * }
    example : (∀ x, p x) ∨ (∀ x, q x) → ∀ x, p x ∨ q x :=
      by { intros, cases a; simp * }
  end

  namespace ch4_6_classical
    open classical

    variables (α : Type) (p q : α → Prop)
    variable r : Prop

    example : α → ((∀ x : α, r) ↔ r) :=
      by { intro, split; intros; try { apply ‹α → r› }; assumption }
    example : (∀ x, p x ∨ r) ↔ (∀ x, p x) ∨ r :=
    begin
      split; intros,
      { apply by_cases; intros,
          { right, assumption },
          { left,
            intro,
            have : p x ∨ r;
            try { cases ‹p x ∨ r› };
            try { contradiction };
            all_goals { simp * } } },
      { cases ‹(∀ (x : α), p x) ∨ r›; simp * }
    end
    example : (∀ x, r → p x) ↔ (r → ∀ x, p x) :=
      by { split; intros; simp * }
  end ch4_6_classical

  section
    variables (men : Type) (barber : men)
    variable (shaves : men → men → Prop)

    example (h : ∀ x : men, shaves barber x ↔ ¬ shaves x x) : false :=
    begin
      have : shaves barber barber ↔ ¬ shaves barber barber, from h _,
      have : ¬ shaves barber barber,
      intro,
      any_goals { apply ‹¬_› },
      all_goals { apply ‹_ ↔ ¬_›.mp <|> rw ‹_ ↔ ¬_› },
      all_goals { assumption }
    end
  end

  section
    variables (real : Type) [ordered_ring real]
    variables (log exp : real → real)
    variable log_exp_eq : ∀ x, log (exp x) = x
    variable exp_log_eq : ∀ {x}, x > 0 → exp (log x) = x
    variable exp_pos : ∀ x, exp x > 0
    variable exp_add : ∀ x y, exp (x + y) = exp x * exp y

    include log_exp_eq exp_log_eq exp_pos exp_add

    example (x y z : real) : exp (x + y + z) = exp x * exp y * exp z :=
      by rw [exp_add, exp_add]

    example (y : real) (h : y > 0)  : exp (log y) = y :=
      exp_log_eq h

    theorem log_mul {x y : real} (hx : x > 0) (hy : y > 0) : log (x * y) = log x + log y :=
      by rw [←exp_log_eq hx, ←exp_log_eq hy, ←exp_add, log_exp_eq, log_exp_eq, log_exp_eq]
  end

  example (x : ℤ) : x * 0 = 0 :=
    by rw [←sub_self (1 : ℤ), mul_sub, mul_one, sub_self, sub_self]
end ch4_6
