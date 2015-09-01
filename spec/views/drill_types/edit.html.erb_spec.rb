require 'rails_helper'

RSpec.describe "drill_types/edit", type: :view do
  before(:each) do
    @drill_type = assign(:drill_type, DrillType.create!(
      :name => "MyString",
      #:required_frequency => "MyString"
      :required_frequency => "monthly"
    ))
  end

  it "renders the edit drill_type form" do
    render

    assert_select "form[action=?][method=?]", drill_type_path(@drill_type), "post" do

      assert_select "input#drill_type_name[name=?]", "drill_type[name]"

      assert_select "input#drill_type_required_frequency[name=?]", "drill_type[required_frequency]"
    end
  end
end
