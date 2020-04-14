section
  variables x y : ℕ

  def double := x + x

  #check double y
  #check double (2 * x)

  theorem t1 : double (x + y) = double x + double y :=
    by simp [double, add_left_comm]

  #check t1 y
  #check t1 (2 * x)

  theorem t2 : double (x * y) = double x * y :=
    by simp [double, add_mul]
end
