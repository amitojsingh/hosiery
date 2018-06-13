require "rails_helper"

RSpec.describe Manufacturing::KnittingsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/manufacturing/knittings").to route_to("manufacturing/knittings#index")
    end

    it "routes to #new" do
      expect(:get => "/manufacturing/knittings/new").to route_to("manufacturing/knittings#new")
    end

    it "routes to #show" do
      expect(:get => "/manufacturing/knittings/1").to route_to("manufacturing/knittings#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/manufacturing/knittings/1/edit").to route_to("manufacturing/knittings#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/manufacturing/knittings").to route_to("manufacturing/knittings#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/manufacturing/knittings/1").to route_to("manufacturing/knittings#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/manufacturing/knittings/1").to route_to("manufacturing/knittings#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/manufacturing/knittings/1").to route_to("manufacturing/knittings#destroy", :id => "1")
    end

  end
end
