require 'rails_helper'

RSpec.describe "master/yarns/show", type: :view do
  before(:each) do
    @master_yarn = assign(:master_yarn, Master::Yarn.create!(
      :Color => "Color",
      :Lotnumber => "Lotnumber",
      :Quantity => 2.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Color/)
    expect(rendered).to match(/Lotnumber/)
    expect(rendered).to match(/2.5/)
  end
end
