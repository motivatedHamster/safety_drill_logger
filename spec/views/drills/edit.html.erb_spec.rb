require 'rails_helper'

RSpec.describe "drills/edit", type: :view do
  before(:each) do
    @drill = assign(:drill, Drill.create!(
      :date_performed => "MyString"
    ))
  end

  it "renders the edit drill form" do
    render

    assert_select "form[action=?][method=?]", drill_path(@drill), "post" do

      assert_select "input#drill_date_performed[name=?]", "drill[date_performed]"
    end
  end
end
