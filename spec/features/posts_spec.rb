require 'rails_helper'

RSpec.feature "Posts", type: :feature do
  scenario "displays published posts ONLY" do

    post = Post.create(title: "Test Title", body: "Test Body", published_at: Date.tomorrow)
    expect {
      visit root_path
      expect(page).to have_content "Posts"
      expect(page).to_not have_content "Test Title"
    }.to change(Post.all, :count).by(0)
  end
end
