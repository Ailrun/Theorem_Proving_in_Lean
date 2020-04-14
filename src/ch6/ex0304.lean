namespace foo
  protected def bar : ℕ := 1
end foo

open foo

-- #check bar -- error
#check foo.bar

