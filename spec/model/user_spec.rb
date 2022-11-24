require 'rails_helper'
RSpec.describe User, type: :model do
  subject { User.new(name: 'Gordon', postsCounter: 30, photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Kenya.') }

  before { subject.save }

  it 'Name should be present' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'postsCounter should be present' do
    subject.postsCounter = nil
    expect(subject).to_not be_valid
  end

  it 'postsCounter should be integer' do
    subject.postsCounter = 'a'
    expect(subject).to_not be_valid
  end

  it 'postsCounter should be greater than or equal to zero' do
    subject.postsCounter = -1
    expect(subject).to_not be_valid
  end
end
