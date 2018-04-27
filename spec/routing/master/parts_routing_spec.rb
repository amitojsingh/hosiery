require "rails_helper"

RSpec.describe Master::PartsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/master/parts").to route_to("master/parts#index")
    end

    it "routes to #new" do
      expect(:get => "/master/parts/new").to route_to("master/parts#new")
    end

    it "routes to #show" do
      expect(:get => "/master/parts/1").to route_to("master/parts#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/master/parts/1/edit").to route_to("master/parts#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/master/parts").to route_to("master/parts#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/master/parts/1").to route_to("master/parts#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/master/parts/1").to route_to("master/parts#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/master/parts/1").to route_to("master/parts#destroy", :id => "1")
    end

  end
end
