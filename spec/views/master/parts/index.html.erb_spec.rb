require 'rails_helper'

RSpec.describe "master/parts/index", type: :view do
  before(:each) do
    assign(:master_parts, [
      Master::Part.create!(
        :suitpart => "Suitpart"
      ),
      Master::Part.create!(
        :suitpart => "Suitpart"
      )
    ])
  end

  it "renders a list of master/parts" do
    render
    assert_select "tr>td", :text => "Suitpart".to_s, :count => 2
  end
end
