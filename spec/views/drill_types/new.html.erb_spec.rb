require 'rails_helper'

RSpec.describe "drill_types/new", type: :view do
  before(:each) do
    assign(:drill_type, DrillType.new(
      :name => "MyString",
      :required_frequency => "MyString"
    ))
  end

  it "renders new drill_type form" do
    render

    assert_select "form[action=?][method=?]", drill_types_path, "post" do

      assert_select "input#drill_type_name[name=?]", "drill_type[name]"

      assert_select "input#drill_type_required_frequency[name=?]", "drill_type[required_frequency]"
    end
  end
end
