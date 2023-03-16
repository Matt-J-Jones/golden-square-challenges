# File: spec/todo_check_spec.rb
require 'todo_check'

RSpec.describe "check todo" do
  # Contains correct hashtag
  it "input string returns true" do
    string = "#TODO Lorem ipsum dolor."
    result = check_todo(string)
    expect(result).to eq true
  end
  # Does not contain hashtag
  it "input string returns false" do
    string = "Lorem ipsum dolor."
    result = check_todo(string)
    expect(result).to eq false
  end
  # Contains hashtag, not at start of string
  it "input string returns true" do
    string = "Lorem #TODO ipsum dolor."
    result = check_todo(string)
    expect(result).to eq true
  end
  # Contains incorrect hashtag
  it "input string returns false" do
    string = "#todo Lorem ipsum dolor."
    result = check_todo(string)
    expect(result).to eq false
  end
  # Does not contain hashtag
  it "input string returns false" do
    string = "TODO Lorem ipsum dolor."
    result = check_todo(string)
    expect(result).to eq false
  end
end