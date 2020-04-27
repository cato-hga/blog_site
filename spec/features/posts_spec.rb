require 'rails_helper'

RSpec.feature "Posts", type: :feature do
  scenario "Displays published posts ONLY" do

    post1 = create(:post, title: "Test Title", body: "Test Body", published_at: Date.tomorrow)
    post2 = create(:post, title: "Title 2", body: "Test Body 2")

    visit root_path

    expect(page).to have_content "Posts"
    expect(page).to have_content "Title 2"
    expect(page).to_not have_content "Test Title"
  end

  scenario "Post can be created with a future published date" do

    expect {
      post = create(:post, published_at: Date.tomorrow)
      visit root_path
      expect(page).to have_content "Posts"
      expect(page).to_not have_content "New Post"
    }.to change{Post.count}.by(1)
  end
end
