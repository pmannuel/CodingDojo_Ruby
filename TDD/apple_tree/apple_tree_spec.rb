require_relative 'apple_tree'

RSpec.describe AppleTree do
  before(:each) do
    @tree = AppleTree.new
  end

  it 'has an age attribute with getter and setter methods' do
    expect{@tree.age = 3}.not_to raise_error
    expect{@tree.age}.not_to raise_error
  end

  it 'has an age attribute with getter and setter methods' do
    expect{@tree.apple_count = 100}.to raise_error(NoMethodError)
  end

  context "tree is younger than 3" do
    it "does not produce apple" do
      @tree.age = 3
      expect(@tree.apple_count).to eq(0)
    end
  end

  context "tree is older than 10" do
    it "decays" do
      @tree.age = 11
      expect{@tree.goneby}.to output("decaying...\n").to_stdout
    end

    it "does not produce apple anymore" do
      curr_apple = @tree.apple_count
      expect(@tree.goneby.apple_count).to eq(curr_apple)
    end
  end

end
