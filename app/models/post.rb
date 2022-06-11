class Post < ApplicationRecord
  validates :title, presence: true
  validates :title, length: { in: 1..150 }

  belongs_to :user
  has_many :comments
end
