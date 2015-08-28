require 'rails_helper'

RSpec.describe "drills/show", type: :view do
  before(:each) do
    @drill = assign(:drill, Drill.create!(
      :date_performed => "Date Performed"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Date Performed/)
  end
end
