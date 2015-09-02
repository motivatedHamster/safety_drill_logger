require 'rails_helper'

RSpec.describe Classroom, type: :model do
  it "has a name" do
    expect(subject).to have_attribute(:name)
  end

  it "is valid with a name" do
    classroom = Classroom.new(name: "some_classroom")
    expect(classroom).to be_valid
  end

  it "is invalid with a name longer than 255 characters" do
    classroom = Classroom.new(name: "1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456")
    expect(classroom).to_not be_valid
  end

end
