class Coffee
  def taste
    "delicious"
  end

  def price(flavour)
    case flavour
    when "white"
      1
    when "black"
      0.8
    else
      raise ArgumentError, "Unknown flavour: #{flavour}"
    end
  end
end

RSpec.describe "An ideal cup of coffee" do
  let(:coffee) { Coffee.new }
  it "is delicious" do
    taste = coffee.taste
    expect(taste).to eq("delicious")
  end
  context "when white coffee" do
    it "costs one dollar" do
      price = coffee.price("white")
      expect(price).to eq(1)
    end
  end
  context "when black coffee" do
    it "costs 0.8 dollar" do
      price = coffee.price("black")
      expect(price).to eq(0.8)
    end
  end
  context "when  wrong flavour" do
    it "raises an error" do
      expect { coffee.price("wrong") }.to raise_error(ArgumentError, "Unknown flavour: wrong")
    end
  end
end
