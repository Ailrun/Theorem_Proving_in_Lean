namespace foo
  def bar : ℕ := 1
end foo

open foo

#check bar
#check foo.bar

