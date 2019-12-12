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

  describe "POST #create" do
    let(:post) { create :post }

    it "should create a new post" do
      expect { create(:post) }.to change { Post.count }.by(1)
      expect(response).to have_http_status(:success)
    end
  end

  describe "PATCH #update" do
    let(:post) { create :post }

    it "updates a post" do 
      post_params = FactoryBot.attributes_for(:post, title: "Update Post Title")

      patch :update, params: { id: post.id, post: post_params }
      expect(post.reload.title).to eq "Update Post Title"
    end
  end
end
