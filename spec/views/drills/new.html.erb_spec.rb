require 'rails_helper'

RSpec.describe "drills/new", type: :view do
  before(:each) do
    assign(:drill, Drill.new(
      :date_performed => "MyString"
    ))
  end

  it "renders new drill form" do
    render

    assert_select "form[action=?][method=?]", drills_path, "post" do

      assert_select "input#drill_date_performed[name=?]", "drill[date_performed]"
    end
  end
end
