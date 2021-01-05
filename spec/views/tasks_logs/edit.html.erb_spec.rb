require 'rails_helper'

RSpec.describe "tasks_logs/edit", type: :view do
  before(:each) do
    @tasks_log = assign(:tasks_log, TasksLog.create!())
  end

  it "renders the edit tasks_log form" do
    render

    assert_select "form[action=?][method=?]", tasks_log_path(@tasks_log), "post" do
    end
  end
end
