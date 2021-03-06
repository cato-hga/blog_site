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

class Post < ApplicationRecord
	has_one_attached :post_image
	belongs_to :user, optional: true
	belongs_to :category, optional: true
	validates_presence_of :title, :body

	scope :published, -> { where("published_at <= ?", Date.today) }

	before_save :check_published_at

  private

	def check_published_at
		self.published_at ||= Date.today
	end
end
