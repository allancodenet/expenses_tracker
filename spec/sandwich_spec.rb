Sandwich = Struct.new(:taste, :toppings)

RSpec.describe "An Ideal Sandwich" do
  it "is delicious" do
    sandwich = Sandwich.new("delicious", [])
    taste = sandwich.taste
    expect(taste).to eq("delicious")
  end
end
