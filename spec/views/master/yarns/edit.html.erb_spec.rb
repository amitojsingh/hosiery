require 'rails_helper'

RSpec.describe "master/yarns/edit", type: :view do
  before(:each) do
    @master_yarn = assign(:master_yarn, Master::Yarn.create!(
      :Color => "MyString",
      :Lotnumber => "MyString",
      :Quantity => 1.5
    ))
  end

  it "renders the edit master_yarn form" do
    render

    assert_select "form[action=?][method=?]", master_yarn_path(@master_yarn), "post" do

      assert_select "input[name=?]", "master_yarn[Color]"

      assert_select "input[name=?]", "master_yarn[Lotnumber]"

      assert_select "input[name=?]", "master_yarn[Quantity]"
    end
  end
end
