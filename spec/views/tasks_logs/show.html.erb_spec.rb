require 'rails_helper'

RSpec.describe "tasks_logs/show", type: :view do
  before(:each) do
    @tasks_log = assign(:tasks_log, TasksLog.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
