class Friendship < ApplicationRecord
  belongs_to :requester, class_name: 'User'
  belongs_to :requested, class_name: 'User'

  validates :requester_id, uniqueness: { scope: :requested_id}
  validates :requested_id, uniqueness: { scope: :requester_id}

  validate :existing_friendship?

  def existing_friendship?
    unless Friendship.where(requester_id: requested_id, requested_id: requester_id).empty?
      errors.add(:requester_id, "Friendship already exists!")
    end
  end
end
