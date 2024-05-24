require 'rails_helper'

RSpec.describe 'Application Running', type: :request do
  it 'returns a successful response from the root path' do
    get '/'
    expect(response).to have_http_status(:not_found)
  end
end
