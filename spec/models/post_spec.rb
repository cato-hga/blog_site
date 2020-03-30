# == Schema Information
#
# Table name: posts
#
#  id          :integer          not null, primary key
#  title       :string
#  body        :text
#  date        :date
#  slug        :string
#  image       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  category_id :integer
#  user_id     :integer
#

require 'rails_helper'

RSpec.describe Post, type: :model do
  subject { 
    described_class.new(title: "Title", body: "ljsdshls", date: Date.today,) 
  }
  it "is valid with correct attributes" do
    expect(subject).to be_valid
  end
  it "is not valid without a title" do
    subject.title = nil
    expect(subject).to_not be_valid
  end
  it "is not valid without a body" do
    subject.body = nil
    expect(subject).to_not be_valid
  end
end
