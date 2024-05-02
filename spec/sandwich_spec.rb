Sandwich = Struct.new(:taste, :toppings)

RSpec.describe "An Ideal Sandwich" do
  before { @sandwich = Sandwich.new("delicious", []) }

  it "is delicious" do
    taste = @sandwich.taste
    expect(taste).to eq("delicious")
  end
  it "lets me add toppings " do
    toppings = @sandwich.toppings << "cheese"
    expect(toppings).not_to be_empty
  end
end
