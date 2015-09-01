require 'rails_helper'
require 'date'

RSpec.describe "drills/edit", type: :view do
  before(:each) do
#    @drill = assign(:drill, Drill.create!(
#      :date_performed => "MyString"
#    ))
    @drill = assign(:drill, Drill.create!)
    assign(:classroom_options, [ ["c1", :id => 1], ["c2", :id => 2] ])
    assign(:drill_type_options, [ ["dt1", :id => 1], ["dt2", :id => 2] ])
    assign(:teacher_options, [ ["t1", :id => 1], ["t2", :id => 2] ])
  end

  it "renders the edit drill form" do
    render

    assert_select "form[action=?][method=?]", drill_path(@drill), "post" do

      assert_select "input#drill_date_performed[name=?]", "drill[date_performed]"
    end
  end
end
