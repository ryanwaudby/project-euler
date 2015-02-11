#Let d(n) be defined as the sum of proper divisors of n (numbers less than n which divide evenly into n).
#If d(a) = b and d(b) = a, where a ≠ b, then a and b are an amicable pair and each of a and b are called amicable numbers.
#For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22, 44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1, 2, 4, 71 and 142; so d(284) = 220.
#Evaluate the sum of all the amicable numbers under 10000.

class Integer
  def sum_of_proper_divisors
    (1..self).select { |num| self % num == 0 && num != self }.inject(:+)
  end

  def amicable_number?
    self == self.sum_of_proper_divisors.sum_of_proper_divisors && self != self.sum_of_proper_divisors
  end
end

p (2..9999).select { |num| num.amicable_number? }.inject(:+)
