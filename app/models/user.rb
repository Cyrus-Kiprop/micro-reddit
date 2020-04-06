class User < ApplicationRecord
  before_save { self.email = email.downcase }
  has_many :posts
  has_many :comments, through: :posts
  validates :name, presence: true, length: { maximum: 50 }

  EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i.freeze
  validates :email, presence: true,
    length: { maximum: 255 },
    format: { with: EMAIL_REGEX },
    uniqueness: { case_sensitive: false }
end
