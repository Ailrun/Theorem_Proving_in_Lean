section
  variables (x y z : ℕ)
  variables (h₁ : x = y) (h₂ : y = z)

  section
    variables {x y z}
    include h₁ h₂
    theorem foo : x = z :=
    begin
      rw [h₁, h₂]
    end
  end

  theorem bar : x = z :=
    eq.trans h₁ h₂

  variable {x}
  theorem baz : x = x := rfl

  #check @foo
  #check @bar
  #check baz
end
