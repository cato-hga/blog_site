require "rails_helper"

RSpec.describe "Static Page", type: :request do
  
  describe "GET#home" do
    subject(:get_home) { get home_path }

    it "returns a status 200" do
      get_home

      expect(response).to have_http_status(200)
    end
  end

  describe "GET#about" do
    subject(:get_about) { get about_path }

    it "returns a status 200" do
      get_about

      expect(response).to have_http_status(200)
    end
  end

  describe "GET#contact" do
    subject(:get_contact) { get contact_path }

    it "returns a status 200" do
      get_contact

      expect(response).to have_http_status(200)
    end
  end
end