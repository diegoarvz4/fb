require 'rails_helper'

RSpec.describe User, type: :model do

  let(:user) { User.create }

  context 'field validations' do
    it 'should validate the presence of username' do
      expect(user).not_to be_valid
    end
  end

  context 'relations validations' do
    it 'should validate the relation with posts' do
      expect(user.posts).to be_empty
    end

    it 'should validate the relation with friendships' do
      expect(user.friendships).to be_empty
    end

    it 'should validate the relation with inverse friendships' do
      expect(user.inverse_friendships).to be_empty
    end

    it 'should validate the relation with comments' do
      expect(user.comments).to be_empty
    end

    
  end
end
