require_relative "../cow"

describe Cow do
  let(:cow) { Cow.new({color: "blue"}) }

  it "is a cow object" do
    expect(cow).to be_a_kind_of Cow
  end

  it "can can have a color" do
    cow.color = "brown"
    expect(cow.color).to eq "brown"
  end

  it "has a default color" do
    expect(Cow.new.color).to eq "pink"
  end

  it "has the color passed in" do
    expect(cow.color).to eq "blue"
  end

  it "has default number of spots" do
    expect(cow.spots).to eq 3
  end

  it "has default number or spots" do
    expect(Cow.new({spots: 5}).spots).to eq 5
  end

  it "raises an error" do
    expect { Cow.new.legs }.to raise_error Cow::ThreeLeggedError
  end

end
