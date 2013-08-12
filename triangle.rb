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
  sides = [a,b,c]
  test_length = [a,b,c].sort!
  raise TriangleError if (test_length[0]+test_length[1] <= test_length[2])
  raise TriangleError if ( test_length[0] == 0 )
  case sides.uniq.count
  when 3
    :scalene
  when 2
    :isosceles
  when 1
    if sides.uniq == [0]
      raise TriangleError, 'all sides equal zero'
    else
      :equilateral
    end
  else
    'Function does not work'
  end

end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
