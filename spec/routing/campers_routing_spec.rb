require "rails_helper"

RSpec.describe CampersController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/campers").to route_to("campers#index")
    end


    it "routes to #show" do
      expect(:get => "/campers/1").to route_to("campers#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/campers").to route_to("campers#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/campers/1").to route_to("campers#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/campers/1").to route_to("campers#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/campers/1").to route_to("campers#destroy", :id => "1")
    end

  end
end
