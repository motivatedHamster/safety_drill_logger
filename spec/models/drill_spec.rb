require 'rails_helper'

RSpec.describe Drill, type: :model do
  it "has date_performed" do
    expect(subject).to have_attribute(:date_performed)
  end

  it "has date_due" do
    expect(subject).to have_attribute(:date_due)
  end
end
