# File: spec/ex1_reading_speed_spec

require 'ex1_reading_speed'

RSpec.describe "Reading Time Estimate" do
  it "returns '0 minute' when 0 words is input" do
    result = reading_speed(0)
    expect(result).to eq "0 minute"
  end

  it "returns '1 minute' when 200 words is input" do
    result = reading_speed(200)
    expect(result).to eq "1 minute"
  end

  it "returns '1 minute and 4 seconds' when 215 words is input" do
    result = reading_speed(215)
    expect(result).to eq "1 minute and 4 seconds"
  end

  it "returns '5 minutes and 30 seconds' when 1100 words is input" do
    result = reading_speed(1100)
    expect(result).to eq "5 minutes and 30 seconds"
  end

  it "returns '15 minutes' when 3000 words is input" do
    result = reading_speed(3000)
    expect(result).to eq "15 minutes"
  end
end