require './lib/prime.rb'
n = ARGV[0] ? ARGV[0].to_i : 10
prime = Prime.new(n)
# print the table if the creation of the table is successful
prime.print_table if prime.calc_table