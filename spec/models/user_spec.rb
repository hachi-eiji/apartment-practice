require 'rails_helper'

RSpec.describe User, type: :model do
  describe '#authenticate' do
    let(:user) do
      create(:user)
    end

    context 'user exists' do
      it 'login success' do
        find_user = User.find_by(login_id: user.login_id)
        expect(find_user.authenticate(user.password).nil?).to be false
      end
    end
  end
end
