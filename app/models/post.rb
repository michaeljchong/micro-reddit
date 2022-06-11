class Post < ApplicationRecord
  validates :title, presence: true
  validates :title, length: { in: 1..150 }
end
