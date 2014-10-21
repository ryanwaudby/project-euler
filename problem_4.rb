#A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 × 99.
#Find the largest palindrome made from the product of two 3-digit numbers.

RANGE = (0..999)

def palindrome?(number)
  number.to_s == number.to_s.reverse
end

largest = 0
RANGE.each { |left| RANGE.each { |right|
  calculated = left * right
  largest = calculated if palindrome?(calculated) && (calculated > largest)
}}
p largest
