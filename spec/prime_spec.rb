require './lib/prime'
require 'spec_helper'

describe Prime do

  before(:each) do
    @prime = Prime.new()
    @order.calc_table
    @m = @prime.m
    @n = @prime.n
  end

  subject { @prime }
  it { should be_valid}
  it { should respond_to(:n) }
  it { should respond_to(:m) }
end
  