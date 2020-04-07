class Post < ApplicationRecord
  belongs_to :user
  has_many :comments
  validates :link, presence: true
  validates :post_text, presence: true
end
