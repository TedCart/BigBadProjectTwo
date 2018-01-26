require "rails_helper"

RSpec.describe GameSquaresController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/game_squares").to route_to("game_squares#index")
    end


    it "routes to #show" do
      expect(:get => "/game_squares/1").to route_to("game_squares#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/game_squares").to route_to("game_squares#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/game_squares/1").to route_to("game_squares#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/game_squares/1").to route_to("game_squares#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/game_squares/1").to route_to("game_squares#destroy", :id => "1")
    end

  end
end
