#A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
#a2 + b2 = c2
#For example, 32 + 42 = 9 + 16 = 25 = 52.
#There exists exactly one Pythagorean triplet for which a + b + c = 1000.
#Find the product abc.

def pythagorean_by_sum(sum = 1000)
  (2..sum).each { |i|
    (1..i).each { |j|
      a, b, c = pythagoras(i, j)
      return a, b, c if (a + b + c == sum)
    }
  }
end

def pythagoras(i, j)
  i2 = i**2
  j2 = j**2
  a = i2 - j2
  b = 2 * i * j
  c = i2 + j2
  return a, b, c
end

p pythagorean_by_sum.inject(1) {|total, i| total * i }
