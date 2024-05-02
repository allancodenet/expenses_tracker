class Coffee
  def initialize(*ingredients)
    ingredient = ingredients.map(&:itself)
    @ingredient = ingredient
  end

  def price(ingredient)
    case ingredient
    when "milk"
      1.25
    when "plain"
      1
    end
  end
end

RSpec.describe " A cup of coffee" do
  let(:coffee) { Coffee.new("milk") }
  describe "price of coffee" do
    context "without milk" do
      it "costs one dollar" do
        price = coffee.price("plain")
        expect(price).to eq(1)
      end
    end
    context "with milk" do
      it "costs 1.25" do
        price = coffee.price("milk")
        expect(price).to eq(1.25)
      end
    end
  end
end
