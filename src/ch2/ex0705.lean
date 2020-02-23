namespace foo
  def a : ℕ := 5
  def f (x : ℕ) : ℕ := x + 7

  def fa : ℕ := f a
end foo

#check foo.a
#check foo.f

namespace foo
  def ffa : ℕ := f (f a)
end foo
