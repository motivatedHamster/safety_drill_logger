require 'rails_helper'

RSpec.describe "drill_types/show", type: :view do
  before(:each) do
    @drill_type = assign(:drill_type, DrillType.create!(
      :name => "Name",
      #:required_frequency => "Required Frequency"
      :required_frequency => "monthly"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    #expect(rendered).to match(/Required Frequency/)
    expect(rendered).to match(/monthly/)
  end
end
