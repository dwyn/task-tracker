require 'rails_helper'

RSpec.describe "tasks_logs/index", type: :view do
  before(:each) do
    assign(:tasks_logs, [
      TasksLog.create!(),
      TasksLog.create!()
    ])
  end

  it "renders a list of tasks_logs" do
    render
  end
end
