require "rails_helper"

RSpec.describe Master::YarnsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/master/yarns").to route_to("master/yarns#index")
    end

    it "routes to #new" do
      expect(:get => "/master/yarns/new").to route_to("master/yarns#new")
    end

    it "routes to #show" do
      expect(:get => "/master/yarns/1").to route_to("master/yarns#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/master/yarns/1/edit").to route_to("master/yarns#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/master/yarns").to route_to("master/yarns#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/master/yarns/1").to route_to("master/yarns#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/master/yarns/1").to route_to("master/yarns#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/master/yarns/1").to route_to("master/yarns#destroy", :id => "1")
    end

  end
end
