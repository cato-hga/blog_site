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

FactoryBot.define do
  factory :post do
    title "New Post"
    body "A body message..."
  end
end
