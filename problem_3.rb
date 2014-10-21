#The prime factors of 13195 are 5, 7, 13 and 29.
#What is the largest prime factor of the number 600851475143 ?

require "prime"

largest = 0

600851475143.prime_division.each { |factors| largest = factors.first if factors.first > largest }

p largest
