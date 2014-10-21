#The sum of the squares of the first ten natural numbers is,
#12 + 22 + ... + 102 = 385
#The square of the sum of the first ten natural numbers is,
#(1 + 2 + ... + 10)2 = 552 = 3025
#Hence the difference between the sum of the squares of the first ten natural numbers and the square of the sum is 3025 − 385 = 2640.
#Find the difference between the sum of the squares of the first one hundred natural numbers and the square of the sum.

NATURAL_NUMBERS = 1..100

sum_of_squares = NATURAL_NUMBERS.inject(0) { |total, i| total + (i * i) }
square_of_the_sum = NATURAL_NUMBERS.inject(0, &:+) * NATURAL_NUMBERS.inject(0, &:+)
p square_of_the_sum - sum_of_squares
