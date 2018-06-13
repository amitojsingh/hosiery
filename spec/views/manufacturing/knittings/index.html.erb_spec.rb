require 'rails_helper'

RSpec.describe "manufacturing/knittings/index", type: :view do
  before(:each) do
    assign(:manufacturing_knittings, [
      Manufacturing::Knitting.create!(
        :ordernumber => 2,
        :parts => "Parts",
        :quantity => 3,
        :worker => "Worker",
        :serial => "Serial",
        :status => 4
      ),
      Manufacturing::Knitting.create!(
        :ordernumber => 2,
        :parts => "Parts",
        :quantity => 3,
        :worker => "Worker",
        :serial => "Serial",
        :status => 4
      )
    ])
  end

  it "renders a list of manufacturing/knittings" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Parts".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Worker".to_s, :count => 2
    assert_select "tr>td", :text => "Serial".to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
  end
end
