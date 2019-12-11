require 'rails_helper'

RSpec.describe PostsController, type: :controller do

  describe "GET #new" do
    it "returns http success" do
      get :new
      expect(response).to have_http_status(:success)
    end 
  end

  describe "GET #index" do
    it "returns http success" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #show" do
    let(:post) { create :post }
    it "returns http success" do
      get :show, params: { id: post.id }
      expect(response).to have_http_status(:success)
    end
  end
end
