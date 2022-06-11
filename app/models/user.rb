class User < ApplicationRecord
  validates :username, :password, presence: true
  validates :username, uniqueness: true
  validates :username, length: { in: 4..12 }
  validates :username, format: { with: /\w+/ }
  validates :password, length: { in: 6..20 }
  validates :password, format: { with: /\w+/ }

  has_many :posts
  has_many :comments, through: :posts
end
