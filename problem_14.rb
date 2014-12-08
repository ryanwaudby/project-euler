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

number_mapped_to_steps = []

(1..1000000).each { |number| number_mapped_to_steps << [number, number.amount_of_steps_in_collatz] }

p number_mapped_to_steps.sort { |a, b| b[1] <=> a[1] }.first[0]
