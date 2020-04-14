section
  parameters {α : Type} {r : α → α → Type}
  parameter transr : ∀ {x y z}, r x y → r y z → r x z

  variables {a b c d e : α}

  theorem t1 (h₁ : r a b) (h₂ : r b c) (h₃ : r c d) : r a d :=
    transr (transr h₁ h₂) h₃

  theorem t2 (h₁ : r a b) (h₂ : r b c) (h₃ : r c d) (h₄ : r d e) : r a e :=
    transr h₁ (t1 h₂ h₃ h₄)

  #check t1
  #check t2
end

#check t1
#check t2

