require 'rails_helper'

RSpec.describe "manufacturing/knittings/edit", type: :view do
  before(:each) do
    @manufacturing_knitting = assign(:manufacturing_knitting, Manufacturing::Knitting.create!(
      :ordernumber => 1,
      :parts => "MyString",
      :quantity => 1,
      :worker => "MyString",
      :serial => "MyString",
      :status => 1
    ))
  end

  it "renders the edit manufacturing_knitting form" do
    render

    assert_select "form[action=?][method=?]", manufacturing_knitting_path(@manufacturing_knitting), "post" do

      assert_select "input[name=?]", "manufacturing_knitting[ordernumber]"

      assert_select "input[name=?]", "manufacturing_knitting[parts]"

      assert_select "input[name=?]", "manufacturing_knitting[quantity]"

      assert_select "input[name=?]", "manufacturing_knitting[worker]"

      assert_select "input[name=?]", "manufacturing_knitting[serial]"

      assert_select "input[name=?]", "manufacturing_knitting[status]"
    end
  end
end
