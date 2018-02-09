require 'rails_helper'

RSpec.describe Authenticate do
	let(:user) { create(:user) }
	subject(:valid_auth_obj) { describe_class.new(user.email, user.pasword) }
	subject(:invalid_auth_obj) { describe_class.new('foo', 'bar') }

	describe '#call' do
		context 'when valid credentials' do
			it 'returns an auth token' do
				token = valid_auth_obj.call
				expect(token).not_to be_nil
			end
		end

		context 'when valid credentials' do
			it 'returns an auth token' do
				token = valid_auth_obj.call
				expect(token).not_to be_nil
			end
		end

		context 'when invalid credentials' do
			it 'raises an authentication error' do
				expect { invalid_auth_obj.call}
				.to raise_error(
					ExceptionHandler::AuthenticationError,
					/invalid credentials/
					)
			end
		end
	end
end