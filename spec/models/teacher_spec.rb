require 'rails_helper'

RSpec.describe Teacher, type: :model do
  it "has a name" do
    expect(subject).to have_attribute(name:)
  end
  
  it "has an email" do
    expect(subject).to have_attribute(email:)
  end
  
  it "is valid with a name and email" do
    teacher = Teacher.new(name: "some_teacher", email: "some_teacher@some_domain.foo")
    expect(teacher).to be_valid
  end
  
  it "is not valid with name longer than 255 characters" do
    teacher = Teacher.new(name: "1234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456", email: "some_teacher@some_domain.foo")
    expect(teacher).to_not be_valid
  end

  it "is not valid with email longer than 255 characters" do
    teacher = Teacher.new(name: "some_teacher", email: "A2345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345678901234567890123456789012345@domain.foo")
    expect(teacher).to_not be_valid
  end

  it "has_many :classrooms"
  it "has_many :drills"
end
