require 'rails_helper'

RSpec.describe "Admin::Aromas", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/admin/aromas/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/admin/aromas/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /create" do
    it "returns http success" do
      get "/admin/aromas/create"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get "/admin/aromas/edit"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /destroy" do
    it "returns http success" do
      get "/admin/aromas/destroy"
      expect(response).to have_http_status(:success)
    end
  end

end
