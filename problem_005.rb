#2520 is the smallest number that can be divided by each of the numbers from 1 to 10 without any remainder.
#What is the smallest positive number that is evenly divisible by all of the numbers from 1 to 20?

require 'rational'
p (1..20).inject(1) { |product, n| product.lcm n }
