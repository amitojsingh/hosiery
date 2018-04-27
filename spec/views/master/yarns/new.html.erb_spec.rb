require 'rails_helper'

RSpec.describe "master/yarns/new", type: :view do
  before(:each) do
    assign(:master_yarn, Master::Yarn.new(
      :Color => "MyString",
      :Lotnumber => "MyString",
      :Quantity => 1.5
    ))
  end

  it "renders new master_yarn form" do
    render

    assert_select "form[action=?][method=?]", master_yarns_path, "post" do

      assert_select "input[name=?]", "master_yarn[Color]"

      assert_select "input[name=?]", "master_yarn[Lotnumber]"

      assert_select "input[name=?]", "master_yarn[Quantity]"
    end
  end
end
