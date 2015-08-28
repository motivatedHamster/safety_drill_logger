require 'rails_helper'

RSpec.describe "drills/index", type: :view do
  before(:each) do
    assign(:drills, [
      Drill.create!(
        :date_performed => "Date Performed"
      ),
      Drill.create!(
        :date_performed => "Date Performed"
      )
    ])
  end

  it "renders a list of drills" do
    render
    assert_select "tr>td", :text => "Date Performed".to_s, :count => 2
  end
end
