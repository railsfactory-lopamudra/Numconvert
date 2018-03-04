require 'spec_helper'

RSpec.describe Numconvert do
  it "has a version number" do
    expect(Numconvert::VERSION).not_to be nil
  end

  it "should add string contrain special charecter" do
    expect(Numconvert.add_string('1;2%/,,$$6,3')).to eql(12)
  end

  it "should return zero if string is empty" do
    expect(Numconvert.add_string('')).to eql(0)
  end

  it "should throw error if string contains negative value" do
    expect(Numconvert.add_string('-1;2%/,,$$6,3')).to raise_error("Negative Number is not allowed")
  end
end
