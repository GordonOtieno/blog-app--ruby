require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  describe 'GET /show' do
    before(:each) do
      get '/users/1/posts/1'
    end
    it 'Check for response code as 200' do
      expect(response).to have_http_status(:ok)
    end

    it 'check for the response body' do
      expect(response.body).to include('Show a particular post')
    end
  end
end
