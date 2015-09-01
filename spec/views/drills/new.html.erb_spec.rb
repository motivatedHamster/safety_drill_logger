require 'rails_helper'
require 'date'

RSpec.describe "drills/new", type: :view do
  before(:each) do
  #  assign(:drill, Drill.new(
  #    :date_performed => DateTime.strptime('01/01/2015', '%m/%d/%Y')
  #  ))
    assign(:drill, Drill.new)
    assign(:classroom_options, [ ["c1", :id => 1], ["c2", :id => 2] ])
    assign(:drill_type_options, [ ["dt1", :id => 1], ["dt2", :id => 2] ])
    assign(:teacher_options, [ ["t1", :id => 1], ["t2", :id => 2] ])

  end

  it "renders new drill form" do
    render

    assert_select "form[action=?][method=?]", drills_path, "post" do

      assert_select "input#drill_date_performed[name=?]", "drill[date_performed]"
    end
  end
end
