require 'rails_helper'

RSpec.describe "Descriptions", type: :request do
  describe "GET /show" do
    it "returns http success" do
      get "/descriptions/show"
      expect(response).to have_http_status(:success)
    end
  end

end
