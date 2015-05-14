require 'rails_helper'

RSpec.describe Drill, type: :model do
  it "has date_performed" do
    expect(subject).to have_attribute(:date_performed)
  end

  it "belongs_to :teacher"
  it "belongs_to :classroom"
  it "belongs_to :drill_type"
end
