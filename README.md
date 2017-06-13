## Prime numbers multiplication table

## instructions
- install the rspec gem  (gem install rspec)
- run the program by typing `ruby main.rb`
- By default, the program will create a 10 x 10 Prime numbers multiplication table.
- You can add a parameter, e.g. `ruby main.rb 12` will create a 12 x 12 multiplication table.
- run the tests by typing `rspec` or `rspec spec/prime_spec.rb`

## Notes
- The complexity is of this algorithm is approx O(sqrt(n)).
- If the program was designed to compute a large number of primes, I would have used the sieve of Eratosthenes algorithm.
- For convenience, I have decided that a table smaller than two digits is invalid (doesn't make much sense).
