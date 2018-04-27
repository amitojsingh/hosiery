require 'rails_helper'

RSpec.describe "master/parts/new", type: :view do
  before(:each) do
    assign(:master_part, Master::Part.new(
      :suitpart => "MyString"
    ))
  end

  it "renders new master_part form" do
    render

    assert_select "form[action=?][method=?]", master_parts_path, "post" do

      assert_select "input[name=?]", "master_part[suitpart]"
    end
  end
end
