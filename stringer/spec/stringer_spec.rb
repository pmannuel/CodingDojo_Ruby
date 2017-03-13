require "spec_helper"

describe Stringer do
  it "concatenates undefined number of strings with a space" do
    expect(Stringer.spacify "Oscar", "Vazquez", "Zweig", "Olasaba", "Hernandez", "Ricardo", "Mendoza").to eq("Oscar Vazquez Zweig Olasaba Hernandez Ricardo Mendoza")
  end

  it "minify: shorten to string when it exceeds given max length and add a '...' to the end" do
    expect(Stringer.minify("Hello, I'm learning how to create a gem", 10)).to eq("Hello, I'm...")
    expect(Stringer.minify("Hello", 10)).to eq("Hello")
  end

  it "replacify: replaces specified word with given word" do
    expect(Stringer.replacify("I can't do this", "can't", "can")).to eq("I can do this")
  end

  it "tokenize: iterates over a string and add each word into an array, then returns that array" do
    expect(Stringer.tokenize "I love to code").to eq(["I", "love", "to", "code"])
  end

  it "removify: remove each instance of the second parameter within the original string" do
    expect(Stringer.removify("I'm not a developer", "not")).to eq("I'm a developer")
  end
end
