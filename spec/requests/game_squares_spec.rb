require 'rails_helper'

RSpec.describe "GameSquares", type: :request do
  describe "GET /game_squares" do
    it "works! (now write some real specs)" do
      get game_squares_path
      expect(response).to have_http_status(200)
    end
  end
end
