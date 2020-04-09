class Post < ApplicationRecord
  belongs_to :created_by, class_name: 'User'
  has_many :comments
end
