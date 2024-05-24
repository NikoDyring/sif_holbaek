# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Application Running' do
  it 'returns a successful response from the root path' do
    get '/'
    expect(response).to have_http_status(:not_found)
  end
end
