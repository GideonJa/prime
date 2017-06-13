require '../lib/prime.rb'

describe MyModel do
  it "should be true" do
    Prime.new().should be_true
  end
end