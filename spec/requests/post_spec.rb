require 'rails_helper'

RSpec.describe "Post", type: :request do
  before do
    @user = FactoryBot.create(:user)
  end

  describe "GET#new" do
    subject(:get_new_post) { get new_post_path }
    it "returns a 200 status" do
      sign_in @user
      get_new_post

      expect(response).to have_http_status(200)
    end
  end

  describe "GET#index" do
    subject(:get_all_post) { get posts_path }

    it "returns a 200 status" do
      get_all_post

      expect(response).to have_http_status(200)
    end
  end

  describe "GET#show" do
    let(:post) { create :post }
    
    subject(:show_post) { get post_path(post.id) }

    it "returns an individual post" do
      show_post
      
      expect(response).to have_http_status(200)
    end
  end

  describe "GET#post" do
    post_params = FactoryBot.attributes_for(:post)

    subject(:create_post) { post posts_path, params:{ :post => post_params } }


    it "creates a new post" do
      sign_in @user
      
      expect{ create_post }.to change(Post, :count).by(1)
    end
  end

  describe "PATCH#update" do
    let(:post) { create :post }

    it "updates a post" do
      sign_in @user
      
      post_params = FactoryBot.attributes_for(:post, title: "Update Post Title")

      patch post_path(post.id), params: { id: post.id, post: post_params }

      expect(post.reload.title).to eq "Update Post Title"
    end
  end

  describe "GET#edit" do
    let(:post) { create :post }

    it "returns http success" do
      sign_in @user
      get edit_post_path(post.id), params: { id: post.id }
      expect(response).to have_http_status(:success)
    end
  end

  describe "DELETE#destroy" do
    let!(:post) { create :post }

    it "deletes a post" do
      sign_in @user
      expect {
        delete "/posts/#{post.id}", params: { id: post.id }
      }.to change(Post, :count).by(-1)
    end
  end
end