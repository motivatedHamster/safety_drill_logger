require "rails_helper"

RSpec.describe DrillTypesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/drill_types").to route_to("drill_types#index")
    end

    it "routes to #new" do
      expect(:get => "/drill_types/new").to route_to("drill_types#new")
    end

    it "routes to #show" do
      expect(:get => "/drill_types/1").to route_to("drill_types#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/drill_types/1/edit").to route_to("drill_types#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/drill_types").to route_to("drill_types#create")
    end

    it "routes to #update" do
      expect(:put => "/drill_types/1").to route_to("drill_types#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/drill_types/1").to route_to("drill_types#destroy", :id => "1")
    end

  end
end
