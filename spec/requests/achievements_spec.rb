require 'rails_helper'

RSpec.describe "Achievements", type: :request do
  describe "GET /create" do
    it "returns http success" do
      get "/achievements/create"
      expect(response).to have_http_status(:success)
    end
  end

end
