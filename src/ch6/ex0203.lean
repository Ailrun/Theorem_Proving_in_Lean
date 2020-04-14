section
  variables (x y z : ℕ)
  variables (h₁ : x = y) (h₂ : y = z)

  section include_hs
    include h₁ h₂

    theorem foo : x = z :=
    begin
      rw [h₁, h₂]
    end
  end include_hs
end
