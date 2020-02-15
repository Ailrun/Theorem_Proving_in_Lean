namespace foo
  def a : ℕ := 5
  def f (x : ℕ) : ℕ := x + 7

  def fa : ℕ := f a

  namespace bar
    def ffa : ℕ := f (f a)

    #check fa
    #check ffa
  end bar

  #check fa
  #check bar.ffa
end foo

#check foo.fa
#check foo.bar.ffa

open foo

#check fa
#check bar.ffa

