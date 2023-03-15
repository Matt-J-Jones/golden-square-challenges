# File: spec/make_snippet_spec.rb

require 'make_snippet'

RSpec.describe "returns" do
  it "blank when blank string input" do
    string = ""
    result = make_snippet(string)
    expect(result).to eq ""
  end

  it "string when 5 word string input" do
    string = "Lorem ipsum dolor sit amet"
    result = make_snippet(string)
    expect(result).to eq "Lorem ipsum dolor sit amet"
  end

  it "string when 2 word string input" do
    string = "Lorem ipsum"
    result = make_snippet(string)
    expect(result).to eq "Lorem ipsum"
  end

  it "first five words with '...' when 10 word string input" do
    string = "Lorem ipsum dolor sit amet consectetur adipiscing elit. Nullam pellentesque."
    result = make_snippet(string)
    expect(result).to eq "Lorem ipsum dolor sit amet..."
  end
end