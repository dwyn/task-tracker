require 'rails_helper'

RSpec.describe "tasks_logs/new", type: :view do
  before(:each) do
    assign(:tasks_log, TasksLog.new())
  end

  it "renders new tasks_log form" do
    render

    assert_select "form[action=?][method=?]", tasks_logs_path, "post" do
    end
  end
end
