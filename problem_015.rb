# Starting in the top left corner of a 2×2 grid, and only being able to move to the right and down, there are exactly 6 routes to the bottom right corner.
# How many such routes are there through a 20×20 grid?

class Integer
  def factorial
    (1..self).inject(:*)
  end
end

GRID_SIZE = 20
numerator = ("RD" * GRID_SIZE).length.factorial
denominator = GRID_SIZE.factorial * GRID_SIZE.factorial
p numerator / denominator
