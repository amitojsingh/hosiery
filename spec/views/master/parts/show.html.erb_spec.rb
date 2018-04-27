require 'rails_helper'

RSpec.describe "master/parts/show", type: :view do
  before(:each) do
    @master_part = assign(:master_part, Master::Part.create!(
      :suitpart => "Suitpart"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Suitpart/)
  end
end
