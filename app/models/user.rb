class User < ApplicationRecord

  validates :email, uniqueness: true
  validates :email, presence: true
  has_many :posts
  has_many :comments
  has_many :likes

end
