require 'rails_helper'

RSpec.describe "Players", type: :request do
  describe "GET /dashboard" do
    it "returns http success" do
      get "/players/dashboard"
      expect(response).to have_http_status(:success)
    end
  end

end
