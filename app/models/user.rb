class User < ApplicationRecord
  has_many :friendships, foreign_key: :requester_id, class_name: 'Friendship'
  has_many :inverse_friendships, foreign_key: :requested_id, class_name: 'Friendship'
  has_many :posts, foreign_key: :created_by_id
  has_many :comments, foreign_key: :author_id

  validates :username, presence: true
end
