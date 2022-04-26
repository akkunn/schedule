class Post < ApplicationRecord
  validates :title, presence: true
  validates :start, presence: true
  validates :finish, presence: true
  validates :memo, length: {in: 1..140}
end

