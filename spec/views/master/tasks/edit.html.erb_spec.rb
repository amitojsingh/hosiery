require 'rails_helper'

RSpec.describe "master/tasks/edit", type: :view do
  before(:each) do
    @master_task = assign(:master_task, Master::Task.create!(
      :taskname => "MyString"
    ))
  end

  it "renders the edit master_task form" do
    render

    assert_select "form[action=?][method=?]", master_task_path(@master_task), "post" do

      assert_select "input[name=?]", "master_task[taskname]"
    end
  end
end
