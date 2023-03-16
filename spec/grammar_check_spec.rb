# File: spec/grammar_check_spec.rb
require 'grammar_check'

RSpec.describe "Check sentence grammar: " do
  # starts with capital, ends with full stop
  it "input 'Lorem ipsum dolor sit amet.' returns true." do
    string = "Lorem ipsum dolor sit amet."
    result = grammar_check(string)
    expect(result).to eq true
  end
  # doesn't start with capital, doesnt end with punctuation
  it "input 'lorem ipsum dolor sit amet' returns false." do
    string = "lorem ipsum dolor sit amet"
    result = grammar_check(string)
    expect(result).to eq false
  end
  # starts with capital, doesn't end with punctuation
  it "input 'Lorem ipsum dolor sit amet' returns false" do
    string = "Lorem ipsum dolor sit amet"
    result = grammar_check(string)
    expect(result).to eq false
  end
  # doesn't start with capital, ends with punctuation
  it "input 'lorem ipsum dolor sit amet.' returns false" do
    string = "lorem ipsum dolor sit amet."
    result = grammar_check(string)
    expect(result).to eq false
  end
  # starts with capital, ends with commar (not end of sentence)
  it "input 'Lorem ipsum dolor sit amet,' returns false" do
    string = "Lorem ipsum dolor sit amet,"
    result = grammar_check(string)
    expect(result).to eq false
  end
  # starts with capital, doesn't end with punctuation, contains punctuation
  it "input 'Lorem ipsum? dolor! sit amet' returns false" do
    string = "lorem ipsum dolor sit amet."
    result = grammar_check(string)
    expect(result).to eq false
  end
end