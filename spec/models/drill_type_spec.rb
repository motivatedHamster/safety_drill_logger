require 'rails_helper'

RSpec.describe DrillType, type: :model do
  it "has name" do
    expect(subject).to have_attribute(:name)
  end

  it "has required_frequency" do
    expect(subject).to have_attribute(:required_frequency)
  end

  it "is valid with name and required_frequency" do
    drill_type = DrillType.new(name: "some_drill_type", required_frequency: "weekly")
    expect(drill_type).to be_valid
  end

  it "is invalid with name longer than 255 characters" do
    drill_type = DrillType.new(name: "1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456", required_frequency: "weekly")
    expect(drill_type).to_not be_valid
  end

  it "is invalid if required_frequency is not one of weekly, monthly, yearly, quarterly, twice_yearly" do
    drill_type = DrillType.new(name: "some_drill_type", required_frequency: "foo")
    expect(drill_type).to_not be_valid
  end
end
