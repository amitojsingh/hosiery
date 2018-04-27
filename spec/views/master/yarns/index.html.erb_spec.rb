require 'rails_helper'

RSpec.describe "master/yarns/index", type: :view do
  before(:each) do
    assign(:master_yarns, [
      Master::Yarn.create!(
        :Color => "Color",
        :Lotnumber => "Lotnumber",
        :Quantity => 2.5
      ),
      Master::Yarn.create!(
        :Color => "Color",
        :Lotnumber => "Lotnumber",
        :Quantity => 2.5
      )
    ])
  end

  it "renders a list of master/yarns" do
    render
    assert_select "tr>td", :text => "Color".to_s, :count => 2
    assert_select "tr>td", :text => "Lotnumber".to_s, :count => 2
    assert_select "tr>td", :text => 2.5.to_s, :count => 2
  end
end
