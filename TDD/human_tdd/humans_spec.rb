require_relative 'humans'

RSpec.describe Human do
  before(:each) do
    @human = Human.new("Minh Is Lame")
  end

  it "has the attribute strength" do
    expect{@human.strength}.not_to raise_error(NoMethodError)
  end
  it "has the attribute intelligence" do
    expect{@human.intelligence}.not_to raise_error(NoMethodError)
  end
  it "has the attribute stealth" do
    expect{@human.stealth}.not_to raise_error(NoMethodError)
  end
  it "has the attribute health" do
    expect{@human.health}.not_to raise_error(NoMethodError)
  end

  it "has a strength of 3" do
    expect(@human.strength).to eq(3)
  end

  it "has an intelligence of 3" do
    expect(@human.intelligence).to eq(3)
  end

  it "has a stealth of 3" do
    expect(@human.stealth).to eq(3)
  end

  it "has a health of 100" do
    expect(@human.health).to eq(100)
  end

  it "can attack another object" do
    @human2 = Human.new("Frank")
    expect{@human.attack}.not_to raise_error(NoMethodError)
    @human.attack(@human2)
    expect(@human2.health).to be < 100
  end

end
