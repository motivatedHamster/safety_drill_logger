require 'rails_helper'
require 'date'

RSpec.describe "drills/show", type: :view do
  before(:each) do
    @drill = assign(:drill, Drill.create!(
      #:date_performed => "Date Performed"
      :date_performed => DateTime.strptime('01/01/2015', '%m/%d/%Y')

    ))
  end

  it "renders attributes in <p>" do
    render
    #expect(rendered).to match(/Date Performed/)
    expect(rendered).to match(/Date performed/)
  end
end
