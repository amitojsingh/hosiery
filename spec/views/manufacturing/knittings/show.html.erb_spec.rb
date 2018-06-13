require 'rails_helper'

RSpec.describe "manufacturing/knittings/show", type: :view do
  before(:each) do
    @manufacturing_knitting = assign(:manufacturing_knitting, Manufacturing::Knitting.create!(
      :ordernumber => 2,
      :parts => "Parts",
      :quantity => 3,
      :worker => "Worker",
      :serial => "Serial",
      :status => 4
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Parts/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/Worker/)
    expect(rendered).to match(/Serial/)
    expect(rendered).to match(/4/)
  end
end
