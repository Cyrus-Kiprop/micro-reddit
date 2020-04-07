class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user
  has_one :user
  validates :comment_body, presence: true
end
