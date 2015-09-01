require 'rails_helper'

RSpec.describe "drill_types/index", type: :view do
  before(:each) do
    assign(:drill_types, [
      DrillType.create!(
        :name => "Name",
        #:required_frequency => "Required Frequency"
        :required_frequency => "monthly"
      ),
      DrillType.create!(
        :name => "Name",
        #:required_frequency => "Required Frequency"
        :required_frequency => "monthly"
      )
    ])
  end

  it "renders a list of drill_types" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    #assert_select "tr>td", :text => "Required Frequency".to_s, :count => 2
    assert_select "tr>td", :text => "monthly".to_s, :count => 2
  end
end
