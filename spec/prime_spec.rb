require './lib/prime'
require 'spec_helper'

describe Prime do

  before(:each) do
    @prime = Prime.new(10)
    @prime.calc_table
    @m = @prime.m
    @n = @prime.n
    @primes = @prime.primes
  end

  subject { @prime }
  it { should be_valid}
  it { should respond_to(:n) }
  it { should respond_to(:m) }
  it { should respond_to(:primes) }

  describe "The primes array should contain prime numbers only" do
    # before(:each) do
    #   @client_basket = @promotion.process_promotion
    #   @output << @promotion.create_output.flatten
    # end
    it "should contain the numbers 2 and 3" do
      expect(@primes.include?(2)).to be_truthy
      expect(@primes.include?(3)).to be_truthy
    end

    it "@primes size should be @n" do
      expect(@primes.size).to eq(@n)
    end

    it "@primes size should be between 2 to @n" do
      expect(@primes.size).to be <= @n 
      expect(@primes.size).to be >= @n/2 
    end

    it '@primes size should contain prime numbers' do
      known_prime = [2,3,5,7,11,13,17,19,23,29,31,37,41,43,47]
      known_prime[0..(@n-1)].each { |p| expect(@primes.include?(p)).to be_truthy }
    end
  end
end
  