require 'rails_helper'

RSpec.feature "Posts", type: :feature do
  scenario "creates a new blog post" do
    visit new_post_path
    sleep(5)
    expect(page).to have_content("New Post")
  end
end
