require "rails_helper"

RSpec.describe TasksLogsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/tasks_logs").to route_to("tasks_logs#index")
    end

    it "routes to #new" do
      expect(get: "/tasks_logs/new").to route_to("tasks_logs#new")
    end

    it "routes to #show" do
      expect(get: "/tasks_logs/1").to route_to("tasks_logs#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/tasks_logs/1/edit").to route_to("tasks_logs#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/tasks_logs").to route_to("tasks_logs#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/tasks_logs/1").to route_to("tasks_logs#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/tasks_logs/1").to route_to("tasks_logs#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/tasks_logs/1").to route_to("tasks_logs#destroy", id: "1")
    end
  end
end
