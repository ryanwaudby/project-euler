#The following iterative sequence is defined for the set of positive integers:
#n → n/2 (n is even)
#n → 3n + 1 (n is odd)
#Using the rule above and starting with 13, we generate the following sequence:
#13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
#It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.
#Which starting number, under one million, produces the longest chain?
#NOTE: Once the chain starts the terms are allowed to go above one million.

class Integer
  def amount_of_steps_in_collatz
    sequence = [self]
    while sequence.last != 1
      sequence.last.even? ? sequence << (sequence.last / 2) : sequence << ((sequence.last * 3) + 1)
    end
    sequence.size
  end
end

index = 1000000
largest_starting_number = 0
largest_chain = 0

while index > 1
  chain_size = index.amount_of_steps_in_collatz
  if chain_size > largest_chain
    largest_chain = chain_size
    largest_starting_number = index
  end
  index -= 1
end

p largest_starting_number
