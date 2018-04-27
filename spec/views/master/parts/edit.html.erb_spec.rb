require 'rails_helper'

RSpec.describe "master/parts/edit", type: :view do
  before(:each) do
    @master_part = assign(:master_part, Master::Part.create!(
      :suitpart => "MyString"
    ))
  end

  it "renders the edit master_part form" do
    render

    assert_select "form[action=?][method=?]", master_part_path(@master_part), "post" do

      assert_select "input[name=?]", "master_part[suitpart]"
    end
  end
end
