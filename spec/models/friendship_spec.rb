require 'rails_helper'

RSpec.describe Friendship, type: :model do

  let!(:user_1) { User.create(username: 'user_1') }
  let!(:user_2) { User.create(username: 'user_2') }

  let!(:friendship) { 
    Friendship.create(
      active: false, 
      requester_id: user_1.id, 
      requested_id: user_2.id
    )
  }

  context 'validate non-repeating friendships' do
    it 'should not be valid when users repeats' do 
      
      friendship_repeated = Friendship.create(
        active: false, 
        requester_id: user_2.id, 
        requested_id: user_1.id
      )

      expect(friendship_repeated).not_to be_valid

    end

  end

end
