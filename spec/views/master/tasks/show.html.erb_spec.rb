require 'rails_helper'

RSpec.describe "master/tasks/show", type: :view do
  before(:each) do
    @master_task = assign(:master_task, Master::Task.create!(
      :taskname => "Taskname"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Taskname/)
  end
end
