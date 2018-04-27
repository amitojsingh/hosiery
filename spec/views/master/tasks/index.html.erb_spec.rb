require 'rails_helper'

RSpec.describe "master/tasks/index", type: :view do
  before(:each) do
    assign(:master_tasks, [
      Master::Task.create!(
        :taskname => "Taskname"
      ),
      Master::Task.create!(
        :taskname => "Taskname"
      )
    ])
  end

  it "renders a list of master/tasks" do
    render
    assert_select "tr>td", :text => "Taskname".to_s, :count => 2
  end
end
