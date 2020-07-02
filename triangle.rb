# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  raise TriangleError, "All the sides of triangle should be greater than zero" if a <= 0 || b <= 0 || c <= 0
  
  if a + b <= c || a + c <= b || c + b <= a
    raise TriangleError, "Impossible to build triangle with those sides"
  end

  if a == b && b == c && a == c
    :equilateral
  elsif a == b || a == c || b  == c
    :isosceles
  else
    :scalene
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end