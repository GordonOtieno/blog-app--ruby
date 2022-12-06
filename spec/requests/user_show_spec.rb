require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET #show' do
    before(:each) do
      get 'users/1'
      it 'Check for response code as 200' do
        expect(response).to have_http_status(:ok)
      end

      it 'check for the response body' do
        expect(response.body).to include('Show a particular user')
      end

      it 'shows correct view' do
        expect(response).to render_template(:show)
      end
    end
  end
end
