class Reaction < ApplicationRecord
  belongs_to :user
  belongs_to :post

  scope :likes, -> { where(type: 'like')}
  scope :hahas, -> { where(type: 'haha')}
  scope :loves, -> { where(type: 'love')}
  scope :wows, -> { where(type: 'wow')}
  scope :sads, -> { where(type: 'sad')}
  scope :angrys, -> { where(type: 'angry')}
end
