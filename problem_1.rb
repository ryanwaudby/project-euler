#If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
#Find the sum of all the multiples of 3 or 5 below 1000.

sum = 0
1000.times { |number| sum += number if number % 3 == 0 || number % 5 == 0 }
p sum

p (1..999).inject(0) { |total, i| total + i }
