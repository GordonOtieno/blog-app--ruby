require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET #index' do
    before(:each) do
      get '/users'
      it 'Check for respeonse code as 200' do
        expect(response).to have_http_status(:ok)
      end

      it 'shows correct view' do
        expect(response).to render_template(:index)
      end

      it 'Check for the response body' do
        expect(response.body).to include('List of all users')
      end
    end
  end
end
