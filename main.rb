require './lib/prime.rb'
n = ARGV[0] ? ARGV[0].to_i : 10
prime = Prime.new(n)
prime.calc_table
prime.print_table