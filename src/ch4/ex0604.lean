namespace hidden
  def divides (m n : ℕ) : Prop := ∃ k, m * k = n

  instance : has_dvd nat := ⟨divides⟩

  def even (n : ℕ) : Prop := 2 ∣ n -- You can enter the '∣' character by typing \mid

  section
    variables m n : ℕ
  
    #check m ∣ n
    #check m^n
    #check even (m^n +3)
  end

  def prime (n : ℕ) : Prop := ∀ m : ℕ, m > 1 ∧ m < n → ¬ (m ∣ n)

  def infinitely_many_primes : Prop := ∀ n : ℕ, ∃ p : ℕ, prime p ∧ p > n

  def Fermat_prime (n : ℕ) : Prop := (∃ m : ℕ, 2^(2^m) = n) ∧ prime n

  def infinitely_many_Fermat_primes : Prop := ∀ n : ℕ, ∃ p : ℕ, Fermat_prime p ∧ p > n

  def goldbach_conjecture : Prop := ∀ n : ℕ, n > 2 → even n → (∃ a b : ℕ, prime a ∧ prime b ∧ a + b = n)

  def Goldbach's_weak_conjecture : Prop := ∀ n : ℕ, n > 5 → ¬ even n → (∃ a b c : ℕ, prime a ∧ prime b ∧ prime c ∧ a + b + c = n)

  def Fermat's_last_theorem : Prop := ∀ n : ℕ, n > 2 → ¬ (∃ a b c : ℕ, a^n + b^n = c^n)
end hidden
