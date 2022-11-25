require 'rails_helper'

RSpec.describe Like, type: :model do
  describe 'Comment Likes Validations' do
    subject { Like.new(author_id: 1, post_id: 1) }

    before { subject.save }

    it 'checks if author id is a number' do
      subject.author_id = '45e%'
      expect(subject).to_not be_valid
    end

    it 'checks if post id is a number' do
      id = subject.post_id = 1
      expect(id).to be == 1
    end
  end
end
