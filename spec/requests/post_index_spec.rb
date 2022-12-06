require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  describe 'GET /index' do
    before(:each) do
      get '/users/1/posts'
    end

    it 'Check for respeonse code as 200' do
      expect(response).to have_http_status(:ok)
    end

    it 'Check for the response body' do
      expect(response.body).to include('Lists of all posts')
    end
  end
end
