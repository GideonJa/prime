require './lib/prime'

describe Prime do
  it "should be true" do
    Prime.new().should be_true
  end
end