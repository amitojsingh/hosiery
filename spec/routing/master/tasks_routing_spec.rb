require "rails_helper"

RSpec.describe Master::TasksController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/master/tasks").to route_to("master/tasks#index")
    end

    it "routes to #new" do
      expect(:get => "/master/tasks/new").to route_to("master/tasks#new")
    end

    it "routes to #show" do
      expect(:get => "/master/tasks/1").to route_to("master/tasks#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/master/tasks/1/edit").to route_to("master/tasks#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/master/tasks").to route_to("master/tasks#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/master/tasks/1").to route_to("master/tasks#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/master/tasks/1").to route_to("master/tasks#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/master/tasks/1").to route_to("master/tasks#destroy", :id => "1")
    end

  end
end
