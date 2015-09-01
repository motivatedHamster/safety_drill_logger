require 'rails_helper'
require 'date'

RSpec.describe "drills/index", type: :view do
  before(:each) do
    assign(:drills, [
      Drill.create!(
        #:date_performed => "Date Performed"
        :date_performed => Date.strptime('01/01/2015', '%m/%d/%Y')
      ),
      Drill.create!(
        #:date_performed => "Date Performed"
        :date_performed => Date.strptime('01/01/2015', '%m/%d/%Y')
      )
    ])
  end

  it "renders a list of drills" do
    render
    #assert_select "tr>td", :text => "Date Performed".to_s, :count => 2
    assert_select "tr>td", :text => Date.strptime('01/01/2015', '%m/%d/%Y').to_s, :count => 2
  end
end
