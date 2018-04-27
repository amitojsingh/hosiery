require 'rails_helper'

RSpec.describe "master/tasks/new", type: :view do
  before(:each) do
    assign(:master_task, Master::Task.new(
      :taskname => "MyString"
    ))
  end

  it "renders new master_task form" do
    render

    assert_select "form[action=?][method=?]", master_tasks_path, "post" do

      assert_select "input[name=?]", "master_task[taskname]"
    end
  end
end
