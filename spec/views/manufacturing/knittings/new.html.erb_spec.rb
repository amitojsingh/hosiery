require 'rails_helper'

RSpec.describe "manufacturing/knittings/new", type: :view do
  before(:each) do
    assign(:manufacturing_knitting, Manufacturing::Knitting.new(
      :ordernumber => 1,
      :parts => "MyString",
      :quantity => 1,
      :worker => "MyString",
      :serial => "MyString",
      :status => 1
    ))
  end

  it "renders new manufacturing_knitting form" do
    render

    assert_select "form[action=?][method=?]", manufacturing_knittings_path, "post" do

      assert_select "input[name=?]", "manufacturing_knitting[ordernumber]"

      assert_select "input[name=?]", "manufacturing_knitting[parts]"

      assert_select "input[name=?]", "manufacturing_knitting[quantity]"

      assert_select "input[name=?]", "manufacturing_knitting[worker]"

      assert_select "input[name=?]", "manufacturing_knitting[serial]"

      assert_select "input[name=?]", "manufacturing_knitting[status]"
    end
  end
end
