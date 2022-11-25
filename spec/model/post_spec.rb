require 'rails_helper'
RSpec.describe Post, type: :model do
  subject { Post.new(title: 'My First Post', comments_counter: 4, likes_counter: 20) }

  before { subject.save }

  it 'title should be present' do
    subject.title = nil
    expect(subject).to_not be_valid
  end

  it 'comments_counter should be present' do
    subject.comments_counter = nil
    expect(subject).to_not be_valid
  end

  it 'likes_counter should be present' do
    subject.likes_counter = nil
    expect(subject).to_not be_valid
  end

  it 'title should not be too long' do
    subject.title = 'a' * 250
    expect(subject).to_not be_valid
  end

  it 'comments_counter should be integer' do
    subject.comments_counter = 'b'
    expect(subject).to_not be_valid
  end

  it 'comments_counter should be greater than or equal to zero' do
    subject.comments_counter = -1
    expect(subject).to_not be_valid
  end

  it 'likes_counter should be integer' do
    subject.likes_counter = 'i'
    expect(subject).to_not be_valid
  end

  it 'likes_counter should be greater than or equal to zero' do
    subject.likes_counter = -1
    expect(subject).to_not be_valid
  end

  it 'check if likes counter is equal or greater than zero' do
    expect(subject.likes_counter).to be >= 0
  end

end
