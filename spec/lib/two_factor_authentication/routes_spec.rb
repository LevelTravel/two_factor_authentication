require 'spec_helper'

describe 'two-factor authentication routes', type: :routing do
  it 'routes resend_code through the collection endpoint' do
    expect(get: '/users/two_factor_authentication/resend_code').to route_to(
      controller: 'devise/two_factor_authentication',
      action: 'resend_code'
    )
  end
end
